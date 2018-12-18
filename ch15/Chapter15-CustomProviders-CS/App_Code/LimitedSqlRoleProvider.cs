using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace Chapter15_CustomProviders_CS.App_Code
{
    public class LimitedSqlRoleProvider : SqlRoleProvider
    {
        public override void CreateRole(string roleName)
        {
            if (roleName == "Administrator" || roleName == "Manager")
            {
                base.CreateRole(roleName);
            }
            else
            {
                throw new
                    ProviderException("Role creation limited to only Administrator and Manager");
            }
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            return false;
        }

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            foreach (string roleItem in roleNames)
            {
                if (roleItem == "Administrator")
                {
                    throw new ProviderException("You are not authorized to add any users" +
                        " to the Administrator role");
                }
            }

            base.AddUsersToRoles(usernames, roleNames);
        }
    }
}
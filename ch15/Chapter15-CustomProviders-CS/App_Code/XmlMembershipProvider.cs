using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Security;
using System.Xml;
using System.Xml.Linq;

namespace Chapter15_CustomProviders_CS.App_Code
{
    public class XmlMembershipProvider : MembershipProvider
    {
        private string _AppName;
        private Dictionary<string, MembershipUser> _MyUsers;
        private string _FileName;

        public override string ApplicationName
        {
            get
            {
                return _AppName;
            }
            set
            {
                _AppName = value;
            }
        }

        public override void Initialize(string name,
            System.Collections.Specialized.NameValueCollection config)
        {
            base.Initialize(name, config);

            _AppName = config["applicationName"];

            if (String.IsNullOrEmpty(_AppName))
            {
                _AppName = "/";
            }

            _FileName = config["xmlUserDatabaseFile"];

            if (String.IsNullOrEmpty(_FileName))
            {
                _FileName = "/App_Data/Users.xml";
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            return false;
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new NotImplementedException();
        }

        public override bool EnablePasswordReset
        {
            get { throw new NotImplementedException(); }
        }

        public override bool EnablePasswordRetrieval
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override int GetNumberOfUsersOnline()
        {
            throw new NotImplementedException();
        }

        public override string GetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            throw new NotImplementedException();
        }

        public override string GetUserNameByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public override int MaxInvalidPasswordAttempts
        {
            get { throw new NotImplementedException(); }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { throw new NotImplementedException(); }
        }

        public override int MinRequiredPasswordLength
        {
            get { throw new NotImplementedException(); }
        }

        public override int PasswordAttemptWindow
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get { throw new NotImplementedException(); }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { throw new NotImplementedException(); }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get { throw new NotImplementedException(); }
        }

        public override bool RequiresUniqueEmail
        {
            get { throw new NotImplementedException(); }
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override bool UnlockUser(string userName)
        {
            throw new NotImplementedException();
        }

        public override void UpdateUser(MembershipUser user)
        {
            throw new NotImplementedException();
        }

        public override bool ValidateUser(string username, string password)
        {
            if (String.IsNullOrEmpty(username) || String.IsNullOrEmpty(password))
            {
                return false;
            }

            try
            {
                ReadUserFile();

                MembershipUser mu;

                if (_MyUsers.TryGetValue(username.ToLower(), out mu))
                {
                    if (mu.Comment == password)
                    {
                        return true;
                    }
                }

                return false;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
        }

        private void ReadUserFile()
        {
            if (_MyUsers == null)
            {
                lock (this)
                {
                    _MyUsers = new Dictionary<string, MembershipUser>();
                    var query = from users in 
                                XElement.Load(HostingEnvironment.MapPath(_FileName)).Elements("User")
                                select users;

                    foreach (var user in query)
                    {
                        MembershipUser mu = new MembershipUser(Name,
                            user.Element("Username").Value,
                            null,
                            user.Element("Email").Value,
                            String.Empty,
                            user.Element("Password").Value,
                            true,
                            false,
                            DateTime.Parse(user.Element("DateCreated").Value),
                            DateTime.Now,
                            DateTime.Now,
                            DateTime.Now,
                            DateTime.Now);

                        _MyUsers.Add(mu.UserName.ToLower(), mu);
                    }
                }
            }
        }
    }
}
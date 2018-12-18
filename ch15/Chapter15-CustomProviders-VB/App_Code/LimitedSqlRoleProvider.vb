Imports System.Web.Security
Imports System.Configuration.Provider

Public Class LimitedSqlRoleProvider
    Inherits SqlRoleProvider

    Public Overrides Sub CreateRole(ByVal roleName As String)
        If (roleName = "Administrator" Or roleName = "Manager") Then
            MyBase.CreateRole(roleName)
        Else
            Throw New  _
             ProviderException("Role creation limited to only Administrator and Manager")
        End If
    End Sub

    Public Overrides Function DeleteRole(ByVal roleName As String, _
        ByVal throwOnPopulatedRole As Boolean) As Boolean
        Return False
    End Function

    Public Overrides Sub AddUsersToRoles(ByVal usernames() As String, _
        ByVal roleNames() As String)

        For Each roleItem As String In roleNames
            If roleItem = "Administrator" Then
                Throw New  _
                    ProviderException("You are not authorized to add any users" & _
                        " to the Administrator role")
            End If
        Next

        MyBase.AddUsersToRoles(usernames, roleNames)
    End Sub

End Class
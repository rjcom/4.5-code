Imports System.Xml
Imports System.Web.Hosting

Public Class XmlMembershipProvider
    Inherits MembershipProvider

    Private _AppName As String
    Private _MyUsers As Dictionary(Of String, MembershipUser)
    Private _FileName As String

    Public Overrides Property ApplicationName() As String
        Get
            Return _AppName
        End Get
        Set(ByVal value As String)
            _AppName = value
        End Set
    End Property

    Public Overrides Sub Initialize(ByVal name As String, _
        ByVal config As System.Collections.Specialized.NameValueCollection)
        MyBase.Initialize(name, config)

        _AppName = config("applicationName")

        If (String.IsNullOrEmpty(_AppName)) Then
            _AppName = "/"
        End If

        _FileName = config("xmlUserDatabaseFile")

        If (String.IsNullOrEmpty(_FileName)) Then
            _FileName = "/App_Data/Users.xml"
        End If
    End Sub

    Public Overrides Function ChangePassword(username As String, oldPassword As String, newPassword As String) As Boolean
        Return False
    End Function

    Public Overrides Function ChangePasswordQuestionAndAnswer(username As String, password As String, newPasswordQuestion As String, newPasswordAnswer As String) As Boolean

    End Function

    Public Overrides Function CreateUser(username As String, password As String, email As String, passwordQuestion As String, passwordAnswer As String, isApproved As Boolean, providerUserKey As Object, ByRef status As MembershipCreateStatus) As MembershipUser

    End Function

    Public Overrides Function DeleteUser(username As String, deleteAllRelatedData As Boolean) As Boolean

    End Function

    Public Overrides ReadOnly Property EnablePasswordReset As Boolean
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property EnablePasswordRetrieval As Boolean
        Get

        End Get
    End Property

    Public Overrides Function FindUsersByEmail(emailToMatch As String, pageIndex As Integer, pageSize As Integer, ByRef totalRecords As Integer) As MembershipUserCollection

    End Function

    Public Overrides Function FindUsersByName(usernameToMatch As String, pageIndex As Integer, pageSize As Integer, ByRef totalRecords As Integer) As MembershipUserCollection

    End Function

    Public Overrides Function GetAllUsers(pageIndex As Integer, pageSize As Integer, ByRef totalRecords As Integer) As MembershipUserCollection

    End Function

    Public Overrides Function GetNumberOfUsersOnline() As Integer

    End Function

    Public Overrides Function GetPassword(username As String, answer As String) As String

    End Function

    Public Overloads Overrides Function GetUser(providerUserKey As Object, userIsOnline As Boolean) As MembershipUser

    End Function

    Public Overloads Overrides Function GetUser(username As String, userIsOnline As Boolean) As MembershipUser

    End Function

    Public Overrides Function GetUserNameByEmail(email As String) As String

    End Function

    Public Overrides ReadOnly Property MaxInvalidPasswordAttempts As Integer
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property MinRequiredNonAlphanumericCharacters As Integer
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property MinRequiredPasswordLength As Integer
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property PasswordAttemptWindow As Integer
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property PasswordFormat As MembershipPasswordFormat
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property PasswordStrengthRegularExpression As String
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property RequiresQuestionAndAnswer As Boolean
        Get

        End Get
    End Property

    Public Overrides ReadOnly Property RequiresUniqueEmail As Boolean
        Get

        End Get
    End Property

    Public Overrides Function ResetPassword(username As String, answer As String) As String

    End Function

    Public Overrides Function UnlockUser(userName As String) As Boolean

    End Function

    Public Overrides Sub UpdateUser(user As MembershipUser)

    End Sub

    Public Overrides Function ValidateUser(username As String, password As String) _
        As Boolean
        If (String.IsNullOrEmpty(username) Or String.IsNullOrEmpty(password)) Then
            Return False
        End If

        Try
            ReadUserFile()

            Dim mu As MembershipUser

            If (_MyUsers.TryGetValue(username.ToLower(), mu)) Then
                If (mu.Comment = password) Then
                    Return True
                End If
            End If

            Return False
        Catch ex As Exception
            Throw New Exception(ex.Message.ToString())
        End Try
    End Function

    Private Sub ReadUserFile()
        If (_MyUsers Is Nothing) Then
            SyncLock (Me)
                _MyUsers = New Dictionary(Of String, MembershipUser)()
                Dim query = From users In _
                            XElement.Load( _
                                HostingEnvironment.MapPath(_FileName)).Elements("User") _
                            Select users

                For Each user In query
                    Dim mu As MembershipUser = New MembershipUser(Name, _
                       user.Element("Username").Value, _
                       Nothing, _
                       user.Element("Email").Value, _
                       String.Empty, _
                       user.Element("Password").Value, _
                       True, _
                       False, _
                       DateTime.Parse(user.Element("DateCreated").Value), _
                       DateTime.Now, _
                       DateTime.Now, _
                       DateTime.Now, _
                       DateTime.Now)

                    _MyUsers.Add(mu.UserName.ToLower(), mu)
                Next
            End SyncLock
        End If
    End Sub
End Class
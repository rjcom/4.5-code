Imports Microsoft.VisualBasic

Public Class MyCompanySettings
    Inherits ConfigurationSection

    <ConfigurationProperty("Key1", DefaultValue:="This is the value of Key 1", _
       IsRequired:=False)> _
    Public ReadOnly Property Key1() As String
        Get
            Return MyBase.Item("Key1").ToString()
        End Get
    End Property

    <ConfigurationProperty("Key2", IsRequired:=True)> _
    Public ReadOnly Property Key2() As String
        Get
            Return MyBase.Item("Key2").ToString()
        End Get
    End Property
End Class
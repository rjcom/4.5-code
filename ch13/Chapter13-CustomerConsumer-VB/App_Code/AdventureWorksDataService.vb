Imports System.Data.Services
Imports System.Data.Services.Common
Imports System.Linq
Imports System.ServiceModel.Web

Public Class AdventureWorksDataService
    Inherits DataService(Of AdventureWorksEntities)

    Public Shared Sub InitializeService(ByVal config As  _
                                        DataServiceConfiguration)
        config.SetEntitySetAccessRule("*",
            EntitySetRights.AllRead)
    End Sub
End Class
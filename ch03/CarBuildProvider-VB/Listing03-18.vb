Imports System.IO
Imports System.Web.Compilation
Imports System.Xml
Imports System.CodeDom
Public Class Car
    Inherits BuildProvider
    Public Overrides Sub GenerateCode(ByVal myAb As AssemblyBuilder)
        Dim carXmlDoc As XmlDocument = New XmlDocument()
        Using passedFile As Stream = Me.OpenStream()
            carXmlDoc.Load(passedFile)
        End Using
        Dim mainNode As XmlNode = carXmlDoc.SelectSingleNode("/car")
        Dim selectionMainNode As String = mainNode.Attributes("name").Value
        Dim colorNode As XmlNode = carXmlDoc.SelectSingleNode("/car/color")
        Dim selectionColorNode As String = colorNode.InnerText
        Dim doorNode As XmlNode = carXmlDoc.SelectSingleNode("/car/door")
        Dim selectionDoorNode As String = doorNode.InnerText
        Dim seatsNode As XmlNode = carXmlDoc.SelectSingleNode("/car/seats")
        Dim selectionseatsNode As String = seatsNode.InnerText
        Dim ccu As CodeCompileUnit = New CodeCompileUnit()
        Dim cn As CodeNamespace = New CodeNamespace()
        Dim cmp1 As CodeMemberProperty = New CodeMemberProperty()
        Dim cmp2 As CodeMemberProperty = New CodeMemberProperty()
        Dim cmm1 As CodeMemberMethod = New CodeMemberMethod()
        cn.Imports.Add(New CodeNamespaceImport("System"))
        cmp1.Name = "Color"
        cmp1.Type = New CodeTypeReference(GetType(System.String))
        cmp1.Attributes = MemberAttributes.Public
        cmp1.GetStatements.Add(New CodeSnippetExpression("return """ &
          selectionColorNode & """"))
        cmp2.Name = "Doors"
        cmp2.Type = New CodeTypeReference(GetType(System.Int32))
        cmp2.Attributes = MemberAttributes.Public
        cmp2.GetStatements.Add(New CodeSnippetExpression("return " &
          selectionDoorNode))
        cmm1.Name = "Go"
        cmm1.ReturnType = New CodeTypeReference(GetType(System.Int32))
        cmm1.Attributes = MemberAttributes.Public
        cmm1.Statements.Add(New CodeSnippetExpression("return " &
          selectionseatsNode))
        Dim ctd As CodeTypeDeclaration = New CodeTypeDeclaration(selectionMainNode)
        ctd.Members.Add(cmp1)
        ctd.Members.Add(cmp2)
        ctd.Members.Add(cmm1)
        cn.Types.Add(ctd)
        ccu.Namespaces.Add(cn)
        myAb.AddCodeCompileUnit(Me, ccu)
    End Sub
End Class
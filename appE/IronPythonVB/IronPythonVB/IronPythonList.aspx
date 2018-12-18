<%@ Page Language="VB" %>
          
<!DOCTYPE html>

<script runat="server">
    Dim items() As Integer = Enumerable.Range(1, 5).ToArray()
    Dim subitems() As Integer = Enumerable.Range(1, 7).ToArray()
          
    Dim random As Object
          
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        System.IO.Directory.SetCurrentDirectory( _
            Environment.GetFolderPath( _
                Environment.SpecialFolder.ProgramFiles) & "\IronPython 2.7\Lib")
          
        Dim py As Microsoft.Scripting.Hosting.ScriptRuntime = _
            IronPython.Hosting.Python.CreateRuntime()
          
        random = py.UseFile("random.py")
          
        Me.Repeater1.DataSource = items
        Me.Repeater1.DataBind()
          
    End Sub
          
    Protected Sub Repeater1_ItemDataBound(ByVal sender As Object,
        ByVal e As System.Web.UI.WebControls.RepeaterItemEventArgs)
          
        Dim lbl As Label = CType(e.Item.FindControl("Label"), Label)
        lbl.Text = String.Format("List Number: {0}", e.Item.ItemIndex)
          
        Dim list As BulletedList = CType(e.Item.FindControl("BulletedList"),  _
            BulletedList)
          
        random.shuffle(subitems)
          
        list.DataSource = subitems
        list.DataBind()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
                <ItemTemplate>
                    <p>
                        <asp:Label runat="server" ID="Label" />
                        <br />
                        <asp:BulletedList runat="server" ID="BulletedList" />
                    </p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>

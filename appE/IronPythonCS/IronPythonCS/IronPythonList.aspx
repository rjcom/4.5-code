<%@ Page Language="C#"%>

<!DOCTYPE html>

<script runat="server">
int[] items = Enumerable.Range(1, 5).ToArray();
int[] subitems = Enumerable.Range(1, 7).ToArray();
dynamic random;

protected void Page_Load(object sender, EventArgs e)
{
    System.IO.Directory.SetCurrentDirectory(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles) + @"\IronPython 2.7\Lib");

    Microsoft.Scripting.Hosting.ScriptRuntime py = IronPython.Hosting.Python.CreateRuntime();
    random = py.UseFile("random.py");
          
    this.Repeater1.DataSource = items;
    this.Repeater1.DataBind();
}
          
protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
{
    Label lbl = (Label)e.Item.FindControl("Label");
    lbl.Text = string.Format("List Number: {0}", e.Item.ItemIndex);
    
    BulletedList list = (BulletedList)e.Item.FindControl("BulletedList");
    random.shuffle(subitems);
    list.DataSource = subitems;
    list.DataBind();
}
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

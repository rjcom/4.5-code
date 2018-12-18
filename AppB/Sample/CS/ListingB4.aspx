<%@ Page Language="C#" %>
        
<script runat="server">
  protected void Calculate_Click(object sender, System.EventArgs e)
  {

      VBLibrary.DivideClass myDivide = new VBLibrary.DivideClass();
        
    try
    {
      double numerator = double.Parse(Numerator.Text);
      double denominator = double.Parse(Denominator.Text);
      Answer.Text = myDivide.DivideNumber(numerator,denominator).ToString();
    }
        
    catch (Exception ex)
    {
      Answer.Text = ex.Message.ToString();
    }   
  }
</script>
        
<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
     <title>Using COM Components</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <p>
        <asp:Label ID="Label1" runat="server">Numerator:</asp:Label>
        &nbsp;
        <asp:TextBox ID="Numerator" runat="server"></asp:TextBox>
      </p>
      <p>
        <asp:Label ID="Label2" runat="server">Denominator:</asp:Label>
        &nbsp;
        <asp:TextBox ID="Denominator" runat="server"></asp:TextBox>
      </p>
      <p>
        <asp:Label ID="Label3" runat="server">
         Numerator divided by Denominator:</asp:Label>
        &nbsp;
        <asp:Label ID="Answer" runat="server" Font-Bold="True">0</asp:Label>
      </p>
      <p>
        <asp:Button ID="Calculate"
         runat="server"
         OnClick="Calculate_Click"
         Text="Calculate">
        </asp:Button>
      </p>
    </form>
  </body>
</html>

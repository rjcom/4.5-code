using System;
using AjaxControlToolkit;

public partial class NoBot : System.Web.UI.Page
{
    protected void NoBot1_GenerateChallengeAndResponse(object sender,
        AjaxControlToolkit.NoBotEventArgs e)
    {
        NoBotState state;
        NoBot1.IsValid(out state);

        Label1.Text = state.ToString();
    }
}

<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Rating Control</title>
    <style type="text/css">
        .ratingStar {
            font-size: 0pt;
            width: 13px;
            height: 12px;
            margin: 0px;
            padding: 0px;
            cursor: pointer;
            display: block;
            background-repeat: no-repeat;
        }

        .filledRatingStar {
            background-image: url(Images/FilledStar.png);
        }

        .emptyRatingStar {
            background-image: url(Images/EmptyStar.png);
        }

        .savedRatingStar {
            background-image: url(Images/SavedStar.png);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Rating ID="Rating1" runat="server" StarCssClass="ratingStar" 
         WaitingStarCssClass="savedRatingStar" 
         FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar">
        </asp:Rating>
    </div>
    </form>
</body>
</html>

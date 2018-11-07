<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function ChangePanelVisibility(panel, panelID, flag) {
            hidden.Set(panelID, flag);
            panel.PerformCallback();
            if (flag)
                panel.Show();
            else
                panel.Hide();
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <table id="table" runat="server">
                <tr>
                    <td id="cell1" runat="server">
                        <dx:ASPxDockPanel ID="ASPxDockPanel1" runat="server" OwnerZoneUID="ASPxDockZone1" ClientInstanceName="panel1" 
                            Height="721px" Width="450px" HeaderText="Panel1" ShowCloseButton="false" AllowDragging="false">
                        </dx:ASPxDockPanel>
                        <dx:ASPxDockZone ID="ASPxDockZone1" runat="server" Height="721px" Width="450px"></dx:ASPxDockZone>
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Show" AutoPostBack="false" OnInit="ButtonShow_Init">
                        </dx:ASPxButton>
                        <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Hide" AutoPostBack="false" OnInit="ButtonHide_Init">
                        </dx:ASPxButton>
                    </td>
                    <td id="cell2" runat="server">
                        <dx:ASPxDockPanel ID="ASPxDockPanel2" runat="server" OwnerZoneUID="ASPxDockZone2" ClientInstanceName="panel2"
                            Height="424px" Width="450px" HeaderText="Panel2" ShowCloseButton="false" AllowDragging="false">
                        </dx:ASPxDockPanel>
                        <dx:ASPxDockZone ID="ASPxDockZone2" runat="server" Height="721px" Width="700px"></dx:ASPxDockZone>
                        <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Show" AutoPostBack="false" OnInit="ButtonShow_Init">
                        </dx:ASPxButton>
                        <dx:ASPxButton ID="ASPxButton4" runat="server" Text="Hide" AutoPostBack="false" OnInit="ButtonHide_Init">
                        </dx:ASPxButton>
                    </td>
                    <td id="cell3" runat="server">
                        <dx:ASPxDockPanel ID="ASPxDockPanel3" runat="server" OwnerZoneUID="ASPxDockZone3" ClientInstanceName="panel3" 
                            Height="721px" Width="550px" HeaderText="Panel3" ShowCloseButton="false" AllowDragging="false">
                        </dx:ASPxDockPanel>
                        <dx:ASPxDockZone ID="ASPxDockZone3" runat="server" Height="721px" Width="550px"></dx:ASPxDockZone>
                        <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Show" AutoPostBack="false" OnInit="ButtonShow_Init">
                        </dx:ASPxButton>
                        <dx:ASPxButton ID="ASPxButton6" runat="server" Text="Hide" AutoPostBack="false" OnInit="ButtonHide_Init">
                        </dx:ASPxButton>
                    </td>
                </tr>
            </table>
            <dx:ASPxHiddenField ID="ASPxHiddenField1" runat="server" ClientInstanceName="hidden"></dx:ASPxHiddenField>
            <dx:ASPxButton ID="PostBackButton" runat="server" Text="PostBack"></dx:ASPxButton>
        </div>
    </form>
</body>
</html>

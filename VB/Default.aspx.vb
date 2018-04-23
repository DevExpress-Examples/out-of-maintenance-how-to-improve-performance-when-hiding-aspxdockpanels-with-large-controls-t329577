Imports DevExpress.Web
Imports System
Imports System.Web.UI
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            ASPxHiddenField1.Add(ASPxDockPanel1.ID, True)
            ASPxHiddenField1.Add(ASPxDockPanel2.ID, True)
            ASPxHiddenField1.Add(ASPxDockPanel3.ID, True)
        End If
        RestoreDockPanelsVisibility()
    End Sub
    Protected Sub ButtonShow_Init(ByVal sender As Object, ByVal e As EventArgs)
        SetClickEventWithParameters(sender, "true")
    End Sub
    Protected Sub ButtonHide_Init(ByVal sender As Object, ByVal e As EventArgs)
        SetClickEventWithParameters(sender, "false")
    End Sub
    Private Sub RestoreDockPanelsVisibility()
        If CBool(ASPxHiddenField1(ASPxDockPanel1.ID)) Then
            AddControlToPanel("control1", ASPxDockPanel1)
        End If
        If CBool(ASPxHiddenField1(ASPxDockPanel2.ID)) Then
            AddControlToPanel("control2", ASPxDockPanel2)
        End If
        If CBool(ASPxHiddenField1(ASPxDockPanel3.ID)) Then
            AddControlToPanel("control3", ASPxDockPanel3)
        End If
    End Sub
    Private Sub AddControlToPanel(ByVal controlId As String, ByVal panel As ASPxDockPanel)
        Dim c As Control = Nothing
        If controlId.Equals("control1") Then
            c = LoadControl("~/WebUserControl.ascx")
        ElseIf controlId.Equals("control2") Then
            c = LoadControl("~/WebUserControl2.ascx")
        ElseIf controlId.Equals("control3") Then
            c = LoadControl("~/WebUserControl3.ascx")
        End If
        c.ID = controlId
        panel.Controls.Add(c)
    End Sub
    Private Sub SetClickEventWithParameters(ByVal sender As Object, ByVal flag As String)
        Dim button As ASPxButton = TryCast(sender, ASPxButton)
        Dim cell As HtmlTableCell = TryCast(button.Parent, HtmlTableCell)
        Dim panelClientName As String = String.Empty
        Dim panelID As String = String.Empty
        For Each control As Control In cell.Controls
            If TypeOf control Is ASPxDockPanel Then
                panelClientName = (TryCast(control, ASPxDockPanel)).ClientInstanceName
                panelID = (TryCast(control, ASPxDockPanel)).ID
            End If
        Next control
        button.ClientSideEvents.Click = String.Format("function(s, e) {{ ChangePanelVisibility({0}, '{1}', {2}); }}", panelClientName, panelID, flag)
    End Sub
End Class
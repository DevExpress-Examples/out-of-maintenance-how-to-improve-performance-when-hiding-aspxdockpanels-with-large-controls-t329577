using DevExpress.Web;
using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ASPxHiddenField1.Add(ASPxDockPanel1.ID, true);
            ASPxHiddenField1.Add(ASPxDockPanel2.ID, true);
            ASPxHiddenField1.Add(ASPxDockPanel3.ID, true);
        }
        RestoreDockPanelsVisibility();
    }
    protected void ButtonShow_Init(object sender, EventArgs e)
    {
        SetClickEventWithParameters(sender, "true");
    }
    protected void ButtonHide_Init(object sender, EventArgs e)
    {
        SetClickEventWithParameters(sender, "false");
    }
    void RestoreDockPanelsVisibility()
    {
        if ((bool)ASPxHiddenField1[ASPxDockPanel1.ID])
            AddControlToPanel("control1", ASPxDockPanel1);
        if ((bool)ASPxHiddenField1[ASPxDockPanel2.ID])
            AddControlToPanel("control2", ASPxDockPanel2);
        if ((bool)ASPxHiddenField1[ASPxDockPanel3.ID])
            AddControlToPanel("control3", ASPxDockPanel3);
    }
    private void AddControlToPanel(string controlId, ASPxDockPanel panel)
    {
        Control c = null;
        if (controlId.Equals("control1"))
            c = LoadControl("~/WebUserControl.ascx");
        else if (controlId.Equals("control2"))
            c = LoadControl("~/WebUserControl2.ascx");
        else if (controlId.Equals("control3"))
            c = LoadControl("~/WebUserControl3.ascx");
        c.ID = controlId;
        panel.Controls.Add(c);
    }
    private void SetClickEventWithParameters(object sender, string flag)
    {
        ASPxButton button = sender as ASPxButton;
        HtmlTableCell cell = button.Parent as HtmlTableCell;
        string panelClientName = string.Empty;
        string panelID = string.Empty;
        foreach (Control control in cell.Controls)
        {
            if (control is ASPxDockPanel)
            {
                panelClientName = (control as ASPxDockPanel).ClientInstanceName;
                panelID = (control as ASPxDockPanel).ID;
            }
        }
        button.ClientSideEvents.Click = string.Format("function(s, e) {{ ChangePanelVisibility({0}, '{1}', {2}); }}", panelClientName, panelID, flag);
    }
}
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [WebUserControl.ascx](./CS/WebUserControl.ascx) (VB: [WebUserControl.ascx](./VB/WebUserControl.ascx))
* [WebUserControl.ascx.cs](./CS/WebUserControl.ascx.cs) (VB: [WebUserControl.ascx.vb](./VB/WebUserControl.ascx.vb))
* [WebUserControl2.ascx](./CS/WebUserControl2.ascx) (VB: [WebUserControl2.ascx](./VB/WebUserControl2.ascx))
* [WebUserControl2.ascx.cs](./CS/WebUserControl2.ascx.cs) (VB: [WebUserControl2.ascx.vb](./VB/WebUserControl2.ascx.vb))
* [WebUserControl3.ascx](./CS/WebUserControl3.ascx) (VB: [WebUserControl3.ascx](./VB/WebUserControl3.ascx))
* [WebUserControl3.ascx.cs](./CS/WebUserControl3.ascx.cs) (VB: [WebUserControl3.ascx.vb](./VB/WebUserControl3.ascx.vb))
<!-- default file list end -->
# How to improve performance when hiding ASPxDockPanels with large controls


<p>Even when <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxDockPaneltopic">ASPxDockPanel</a> is hidden, its content will be rendered on a page. The page will contain additional markup with invisible content. To improve performance in this scenario, it is necessary to recreate only the required ASPxDockPanel's content controls on callbacks.</p>
<p>This example illustrates how to implement the aforementioned scenario.<br>Place two buttons that will show or hide <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxDockPaneltopic">ASPxDockPanel</a> for each <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxDockPaneltopic">ASPxDockPanel</a> on the form. Handle <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxButtontopic">ASPxButton's</a> Init event for all Show and Hide buttons. Apply <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientButton_Clicktopic">ASPxButton's client-side Click event</a> and pass <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlBase_ClientInstanceNametopic">ASPxDockPanel's ClientInstanceName</a>, ASPxDockPanel's ID, and a boolean parameter to determine which button is clicked.<br>On the client side, create a method that will get parameters from the Click event and change a visible state of the required panel. Use <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxHiddenFieldtopic">ASPxHiddenField</a> to save ASPxDockPanel's visible state. Then, send a callback to the required panel. In the page' Init event, restore a visible state of each <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxDockPaneltopic">ASPxDockPanel</a> on the form on every callback. If a panel is visible, add the required controls onto the panel.</p>

<br/>



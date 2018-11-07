<%@ Control Language="vb" AutoEventWireup="true" CodeFile="WebUserControl.ascx.vb" Inherits="WebUserControl" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="ProductID">
    <Columns>
        <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
    </Columns>
</dx:ASPxGridView>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
    SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [SupplierID] FROM [Products]"></asp:AccessDataSource>
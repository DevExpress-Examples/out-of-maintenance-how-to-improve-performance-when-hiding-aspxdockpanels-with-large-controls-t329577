<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl2.ascx.cs" Inherits="WebUserControl2" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
    SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]"></asp:AccessDataSource>
<dx:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="AccessDataSource1">
<PagerSettings ShowNumericButtons="False"></PagerSettings>
    <ItemTemplate>
        <b>CategoryID</b>:
        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
        <br/>
        <b>CategoryName</b>:
        <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
        <br/>
        <b>Description</b>:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br/>
    </ItemTemplate>
</dx:ASPxDataView>

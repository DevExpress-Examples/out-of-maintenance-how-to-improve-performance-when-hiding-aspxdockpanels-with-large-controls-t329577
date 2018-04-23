<%@ Control Language="vb" AutoEventWireup="true" CodeFile="WebUserControl3.ascx.vb" Inherits="WebUserControl3" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
    SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [City] FROM [Employees]"></asp:AccessDataSource>

<dx:ASPxTreeList ID="ASPxTreeList1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="EmployeeID">
    <Columns>
        <dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
        </dx:TreeListTextColumn>
        <dx:TreeListTextColumn FieldName="FirstName" VisibleIndex="1">
        </dx:TreeListTextColumn>
        <dx:TreeListTextColumn FieldName="Title" VisibleIndex="2">
        </dx:TreeListTextColumn>
        <dx:TreeListDateTimeColumn FieldName="BirthDate" VisibleIndex="3">
            <PropertiesDateEdit>
                <TimeSectionProperties>
                    <TimeEditProperties>
                        <ClearButton Visibility="Auto">
                        </ClearButton>
                    </TimeEditProperties>
                </TimeSectionProperties>
                <ClearButton Visibility="Auto">
                </ClearButton>
            </PropertiesDateEdit>
        </dx:TreeListDateTimeColumn>
        <dx:TreeListDateTimeColumn FieldName="HireDate" VisibleIndex="4">
            <PropertiesDateEdit>
                <TimeSectionProperties>
                    <TimeEditProperties>
                        <ClearButton Visibility="Auto">
                        </ClearButton>
                    </TimeEditProperties>
                </TimeSectionProperties>
                <ClearButton Visibility="Auto">
                </ClearButton>
            </PropertiesDateEdit>
        </dx:TreeListDateTimeColumn>
        <dx:TreeListTextColumn FieldName="City" VisibleIndex="5">
        </dx:TreeListTextColumn>
    </Columns>
</dx:ASPxTreeList>
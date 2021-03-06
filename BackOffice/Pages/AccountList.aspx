﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeBehind="AccountList.aspx.cs" Inherits="web.micajah.backoffice.Pages.AccountList"
    Title="Accounts List" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageBody" runat="server">
    <mits:CommonGridView runat="server" ID="Account_List" DataKeyNames="AccountGuid"
        DataSourceID="LinqDataSource_List" Width="600px" ColorScheme="Gray" AutoGenerateColumns="False"
        AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" 
        ShowAddLink="True" >
        <Columns>
            <asp:BoundField DataField="AccountName" HeaderText="AccountName" 
                SortExpression="AccountName" />
        </Columns>
    </mits:CommonGridView>
    <asp:LinqDataSource ID="LinqDataSource_List" runat="server" ContextTypeName="web.micajah.backoffice.AppCode.BackOfficeDataContext"
        TableName="BackOffice_Accounts" EnableDelete="True" EnableInsert="True" 
        EnableUpdate="True" OrderBy="AccountName">
    </asp:LinqDataSource>
</asp:Content>

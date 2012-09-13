﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeBehind="PortfolioDetail.aspx.cs" Inherits="web.micajah.backoffice.Pages.PortfolioDetail"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageBody" runat="server">
    <table>
        <tr>
            <td style="width: 600px; text-align: right; font-size: larger;">
                <asp:LinkButton ID="lbEditPortfolio" runat="server" CommandName="EditPortfolio">Edit Portfolio</asp:LinkButton><span
                    style="text-decoration: none;"> - screenshots changes will be rejected</span>
            </td>
        </tr>
        <tr>
            <td>
                <mits:MagicForm ObjectName="Portfolio Screenshots" ID="Portfolio_Detail" runat="server"
                    AutoGenerateInsertButton="True" AutoGenerateDeleteButton="False" AutoGenerateEditButton="True"
                    DefaultMode="Edit" ShowCloseButtonSeparate="False" DataKeyNames="PortfolioGuid"
                    AutoGenerateRows="false" RepeatColumns="1" DataSourceID="LinqDataSource_Detail"
                    ColorScheme="Gray" Width="600px">
                    <Fields>
                        <asp:BoundField DataField="AccountName" HeaderText="Account" ReadOnly="true" HeaderStyle-Width="50px" />
                        <asp:BoundField DataField="PortfolioName" HeaderText="Name" ReadOnly="true" />
                        <mits:TemplateField HeaderText="Files">
                            <ItemTemplate>
                                <mfs:SimpleUpload ID="suScreenShots" runat="server" LocalObjectType="Portfolio" UploadControlsUniqueId="ctl00$PageBody$Portfolio_Detail$btnUpdateClose"
                                    MaxFilesCount="20" OnInit="suScreenShots_Init" />
                                <div style="padding-top: 7px;">
                                    <mfs:FileList ID="flScreenShots" runat="server" LocalObjectType="Portfolio" EnableDeleting="false"
                                        RenderingMode="ThumbnailsList" ShowViewAllAtOnceLink="false" LocalObjectId="<%# this.CurrentPortfolio %>" />
                                </div>
                            </ItemTemplate>
                        </mits:TemplateField>
                    </Fields>
                </mits:MagicForm>
            </td>
        </tr>
    </table>
    <asp:LinqDataSource ID="LinqDataSource_Detail" runat="server" ContextTypeName="web.micajah.backoffice.AppCode.BackOfficeDataContext"
        TableName="BackOffice_Portfolios" Select="new(PortfolioGuid, AccountGuid, BackOffice_Account.AccountName as AccountName, PortfolioName, Overview, Technologies, Text, Partners, Active, PortfolioOrder)">
    </asp:LinqDataSource>
</asp:Content>
<%@ Page EnableViewState="False" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web.micajah.www.work.Default" %>

<%@ Register Src="~/Controls/Contact.ascx" TagName="Contact" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/GetStarted.ascx" TagName="GetStarted" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/LeftMenu.ascx" TagName="LeftMenu" TagPrefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Our work.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" style="padding-top: 30px" width="100%" cellpadding="5px">
        <asp:Repeater ID="rpPortfolio" runat="server">
            <ItemTemplate>
                <tr>
                    <td valign="top">
                        <!--<a href='<%# Eval("Url") %>' style='<%# Eval("LogoUrl")==""?"visibility: hidden": "" %>;border-bottom: solid 0;'>
                            <img style="padding-bottom: 5px" border="0" src='<%# Eval("LogoUrl") %>' alt="Logo" /></a>
                        <br />-->
                        <div style='<%# Eval("SpecialThumbUrl")==""?"visibility: hidden": "" %>'>
                       
                        <a style="border-bottom: 0;" href="Detail.aspx?Portfolio=<%#Eval("PortfolioGuid")%>">
                            <img class="workImage" src='<%# Eval("SpecialThumbUrl") %>' alt="Special Image" width="370" height="250"/>
                        </a>
                           
                        </div>
                    </td>
                    <td valign="middle">
                        <a class="workTitle" href="Detail.aspx?Portfolio=<%#Eval("PortfolioGuid")%>">
                            <%#Eval("PortfolioName")%></a><br />
                        <p><%#Eval("Overview")%></p>
                        <a href="Detail.aspx?Portfolio=<%#Eval("PortfolioGuid")%>">
                            Read More ></a>
                    </td>
                    <!--<td valign="top"><img border="0" src='<%# Eval("LogoUrl") %>' alt="Logo" /></td>-->
                </tr>
                <!--<tr>
                    <td colspan="2" style="padding-top: 20px; border-bottom: dotted 1px black;">
                    </td>
                </tr>-->
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
    <%--<uc1:GetStarted ID="GetStartedControl" runat="server" />--%>
    <uc1:Contact ID="ContactControl1" runat="server" />
</asp:Content>

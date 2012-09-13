<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeBehind="Detail.aspx.cs" Inherits="web.micajah.www.work.Detail" %>

<%@ Register Src="~/Controls/Contact.ascx" TagName="Contact" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/GetStarted.ascx" TagName="GetStarted" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/LeftMenu.ascx" TagName="LeftMenu" TagPrefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    <asp:Literal ID="litAccountName" runat="server"></asp:Literal>
    <asp:Literal ID="litProjectTitle" runat="server"></asp:Literal>
    
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <!--<p><asp:Label CssClass="PortDetAcct" ID="AccountLabel" runat="server" /></p>
        -->
        
        
        <asp:Panel runat="server" ID="OverviewPanel">
            <p>
                <asp:Label CssClass="PortDetHdr" ID="OverviewLabel" Text="Overview" runat="server" /><br />
                <asp:Literal ID="OverviewLiteral" runat="server" /></p>
        </asp:Panel>
        <asp:Panel runat="server" ID="TechnologiesPanel">
            <p>
                <asp:Label CssClass="PortDetHdr" ID="TechnologiesLabel" Text="Technologies" runat="server" /><br />
                <asp:Literal ID="TechnologiesLiteral" runat="server" /></p>
        </asp:Panel>
        <asp:Panel runat="server" ID="PartnerPanel">
            <p>
                <asp:Label CssClass="PortDetHdr" ID="PartnerLabel" Text="Partners" runat="server" /><br />
                <asp:Literal ID="PartnersLiteral" runat="server" /></p>
        </asp:Panel>
        <asp:Panel runat="server" ID="TextPanel">
            <p>
                <asp:Label CssClass="PortDetHdr" ID="TextLabel" Text="Brief" runat="server" /><br />
                <asp:Literal ID="TextLiteral" runat="server" /></p>
        </asp:Panel>
        
        <asp:Panel runat="server" ID="ScreenShotsPanel">
            <p>
                <br />
                <asp:HyperLink runat="server" ID="SpecialImageLink" Target="_blank" BorderWidth="1px" />
                <asp:Repeater ID="ScreenShotsRepeated" runat="server">
                    <ItemTemplate>
                        <br />
                        <br />
                        <asp:HyperLink runat="server" ID="ScreeshotLink" Target="_blank" NavigateUrl='<%# DataBinder.Eval(Container.DataItem, "Original")%>'
                            ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Thumb")%>' BorderWidth="1px" />
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">
    <!--<uc1:LeftMenu ID="LeftMenu1" runat="server" />-->
    <%--<uc1:GetStarted ID="GetStartedControl" runat="server" />--%>
    <uc1:Contact ID="ContactControl1" runat="server" />
</asp:Content>

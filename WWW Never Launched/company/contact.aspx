<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="web.micajah.www.company.contact" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Contact Us.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>Contact.</H2>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="software.aspx.cs" Inherits="web.micajah.www.services.soft.software" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    ASP.NET Software Development
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>ASP.NET Software Development</h2>
   
    <h3>Requirements Discovery Sessions</h3>
 
    <h3>New Project Forward Engineering</h3>
    
    <h3>Existing Application Maintenance</h3>    
    
    <h3>ReCasting Existing Application</h3>
   
</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
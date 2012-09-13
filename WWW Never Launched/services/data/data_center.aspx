<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="data_center.aspx.cs" Inherits="web.micajah.www.services.data.data_center" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
Don't forget deploying the application.    
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>Who's caused the problem?</H2>
    <p>Be careful when you choose an application hosting partner.&nbsp; At some point in time you 
        will need to deploy the application, and if things go good, you will need to 
        scale the application.&nbsp; We personally manage the data center and all 
        servers for the applications we develop.&nbsp; This way, if your site goes down, 
        it is our problem, and we know how to fix it, we don&#39;t need to point fingers.&nbsp; 
        If the developer is not able to manage the servers, eventually there will be finger 
        pointing.
        
        </p>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
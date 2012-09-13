<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="web.micajah.www.services.Default" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Services we provide.
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>ASP.NET Software Development</H2>
    <p>Micajah specializes in Microsoft ASP.NET Development.  Technologies such as: Sql Server, 
    Linq, Team Foundation, WPF, WCF, SOAP Web Services.  The largest differentiator is our Micajah.Common
    Framework. This framework has been developed over 10 years and provides an almost instant application
    scaffolding.
    
    </p>
    
    
    <H2>Datacenter Consulting</H2>
    <p>Don&#39;t put yourself in a position to have the developer pointing at the hoster and 
        the hoster pointing at the developers.&nbsp;&nbsp; This is typical if they are 
        not the same people. We consult and manage from the datacenter, to the servers, 
        all the way to the application, for projects we are engaged.&nbsp; We don&#39;t need 
        to point fingers, we vertically control the service from bare metal hardware all 
        the way up.  </p>

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
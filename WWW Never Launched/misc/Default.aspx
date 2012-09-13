<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web.micajah.www.misc._default" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TopBand" runat="server">
    You&#39;ll need these later.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 class="smallMargin">Ticketing System Login</h2>
    <p><a href="https://login.bigwebapps.com/?DeptId=459&DeptName=Micajah+Development">http://login.bigwebapps.com</a> - used to track bug and engineering assignments.</p>
    
    <h2 class="smallMargin">BaseCamp Project Management</h2>
    <p><a href="http://micajah.basecamphq.com">http://micajah.basecamphq.com</a> - simple project task lists and overview.</p>
    
    <h2 class="smallMargin">GoToMeeting Live Screen Share</h2>
    <p><a href="http://joingotomeeting.com">http://joingotomeeting.com</a> - link to login to screen share system.</p>
    
    <h2 class="smallMargin">Team Foundation Server</h2>
    <p><a href="https://tfs.kc.micajah.com">https://tfs.kc.micajah.com</a> - source control repository login.</p>
    
    <h2 class="smallMargin">Micajah Public Wiki</h2>
    <p><a href="http://public.micajah.com">http://public.micajah.com</a> - public document management system for clients and staff.</p>
    
    <h2 class="smallMargin">SnagIt Screen Capture</h2>
    <p><a href="http://www.snagit.com">http://www.snagit.com</a> - the final word on screen capturing and editing, must have for client liasons.</p>
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBarHolder" runat="server">
   <uc1:LeftMenu ID="LeftMenu1" runat="server" />
   <uc1:Contact ID="ContactControl1" runat="server" />
</asp:Content>

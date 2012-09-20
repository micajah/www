<%@ Register TagPrefix="uc1" TagName="footer" Src="../includes/footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="header" Src="../includes/header.ascx" %>
<%@ Page language="c#" Codebehind="default.aspx.cs" AutoEventWireup="false" Inherits="Micajah.WWW.clienttools._default" %>
<uc1:header id="Header1" runat="server" Title="Client Tools" BreadCrumbs="/home.aspx;Home"></uc1:header>
<form id="Form1" method="post" runat="server">
	<span class='subhead'>Exchange Server Control Panel Access</span>
	<br>
	<br>
	The Exchange Server Control panel will allow you to make changes to all of your 
	hosted Exchange Server accounts. If you already have your administrator account 
	setup you can view the tutorials below and access the system now.
	<p>
		TUTORIAL 1 - <a target="_blank" href="exchange/setup/default.htm">Install Server 
			Administator Tool</a>
		<br>
		<br>
		TUTORIAL 2 - <a target="_blank" href="exchange/manageusers/default.htm">Manage 
			Users and Groups</a>
	</p>
	<p>TUTORIAL&nbsp;3 -&nbsp;<A href="exchange/splitdomain/">Split Domain Setup 
			Information</A>&nbsp;</p>
	<P>Link to launch the Exchange Administrator - <a target="_blank" href="https://ms07.mse2.exchange.ms/provisioningconsole/main.asp">
			https://ms07.mse2.exchange.ms/provisioningconsole/main.asp</a></P>
	<br>
	<span class='subhead'>Hosting Control Panel Access</span>
	<br>
	<br>
	<a class="LargeLink" href='http://helm.micajah.net'>http://helm.micajah.net</a>
	<br>
	<br>
	Follow this link to access the helm hosting control panel. From this system 
	most aspects of your hosting accounts can be controled. (e.g. Email Account 
	Chagnes, DSN, DNS Records, FTP settings)
	<br>
	<br>
	TUTORIALS - Click <a target="_blank" href='hosting/flashtutorials/index.html'>here</a>
	to access the helm control panel training tutorials.
	<br>
	<br>
	<br>
	<span class='subhead'>Screen Capture Tool - Snag-It</span>
	<br>
	<br>
	Micajah uses the software "Snag-it" to capture computer screen shots. We use 
	these screen shots often when capturing software upgrades and new feature 
	requirements. Custom software clients can help reduce development costs by 
	installing this utility and capturing needed software changes. The facilitates 
	lower costs by reducing the need for MITS requirements gathering staff to write 
	up software changes. When software upgrades or changes are relayed via phone or 
	email, subtle issues can easily become lost. By including the end users in the 
	requirements gathering process we are assured more accurate software changes. 
	We urge all of our clients to install the "Snag-it" software on you local 
	computer. Click the link below to access the tutorial for installing and 
	configuring "Snag-it".
	<br>
	<br>
	TUTORIAL 1- <a target="_blank" href='snagit/test_viewlet_swf.html'>Install and 
		Configure Snag-It</a>
	<br>
	<br>
	Snag-It Download Site: <a target="_blank" href='http://www.techsmith.com/download/snagitdefault.asp'>
		http://www.techsmith.com/download/snagitdefault.asp</a>
</form>
<uc1:footer id="Footer1" runat="server"></uc1:footer>

<%@ Register TagPrefix="uc1" TagName="footer" Src="../../../includes/footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="header" Src="../../../includes/header.ascx" %>
<%@ Page language="c#" Codebehind="default.aspx.cs" AutoEventWireup="false" Inherits="Micajah.WWW.clienttools.exchange.splitdomain._default" %>
<P><uc1:header id="Header1" title="Exchange Split Domain Setup" runat="server" BreadCrumbs="/home.aspx;Home;/clienttools/default.aspx;Client Tools"></uc1:header>If 
	you are configuring an Exchange sytem to support a split domain setup you will 
	need to follow these steps. A split domain setup is when you have both a POP3 
	and Exchange based email on the same domain. To do this we will forward all 
	email for *@domain.com to the POP3 server and then forward specific email 
	accounts to the exchange system at *@exchange.domain.com. Before we can forward 
	the emails *@exchange.domain.com we must add this domain alias to each account. 
	Step 1 is to add the new extended domain to the exchange server. After we add 
	this domain to the server it can be associated with each user account.</P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0011.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0012.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0013.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0014.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0015.jpg"></P>
<P>&nbsp;</P>
<P>Step 2: Setup the new domain on each user account.</P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0005.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0006.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0007.jpg"></P>
<P><IMG src="SNAG-0008.jpg"></P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0009.jpg"></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P><IMG src="SNAG-0010.jpg"></P>
<P>&nbsp;</P>
<P>Perform the step 2 instructions on each account that will be forwarded to the 
	Exchange Server.</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;<uc1:footer id="Footer1" runat="server"></uc1:footer></P>
<P></P>

<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="everyone.aspx.cs" Inherits="web.micajah.www.why.everyone" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Everyone looks the same.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>It is hard to tell the difference.</H2>
<p>You have probably spent a bit of time searching for a reliable development 
    partner.&nbsp; Most of the development 
    company&#39;s sites look the same, say the same, it is almost impossible to 
    separate the cream.&nbsp; </p>
<p>I don&#39;t have a simple answer.&nbsp; Ultimately you will have to do your research and trust your gut.&nbsp; If you are interested in taking 
    the next step with us, here is how we do it:</p>
<h2>If you like what u see.</h2>
<p><b>A wink.</b> Shoot us a message and tell us a few bits about your project.</p>
<p><b>A dinner.</b> We&#39;ll setup a time to discuss what you have going on.&nbsp; Ask us 
    anything you like, this one is free! :) We promise not to talk about the weather.</p>
<p><b>A movie?</b>&nbsp; Depending on step 2, see if there is a small and low risk piece 
    in which we can start working together.</p>
<p><b>Meet the parents :)</b> Figure the rest out later.</p>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
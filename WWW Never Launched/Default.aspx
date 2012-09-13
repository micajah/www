<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="web.micajah.www.Default" Title="Untitled Page" %>
<%@ Register src="Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>

<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    asp.net software developer.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>Based in Atlanta with offices in Ukraine, Russia and Eastern Europe we 
        provide<b> .net software development</b> for midsize orgs and start-ups. 
        &nbsp;Starting out
        in 1997 with a few big ups and downs along the way, we've gotten a pretty good handle on 
        custom software 
        development.&nbsp; If you have access to cash or good credit look around and 
        reach out to us.
        <br />Jon Vickers - El Presidente.</p>
    
    <!--<H2>Two Stories, </H2>-->
    
    <P><strong>A Load of Baloney, if you&#39;re into this type of thing...</strong><br /> 
        This is where we create some web pages stuff you 
    have probably read on every other website that does software development or offshoring.
    <a href='why/load_of_crap.aspx'>Click here if you like this sort of content :)</a>
    </P>
    
    <P><strong>What we&#39;re really about...</strong><br /> honest statements to help you 
        make an informed decision.  <a href='/why/'>Click here for Why Us</a>
    </P>
    
       
    <H2>Why consider Micajah?</H2>
    
    <P><strong>True Us Company</strong><br />our company is based in Atlanta, GA in the United States.  This provides
    our clients with the type of legal and copyright protection for sensitive software development project. </P>
    
    <P><strong>Specialized in ASP.NET</strong><br />maintaining a core development speciality allows us to refine our process, providing high code quality and predictable results.  
    </P>
    
    <P><strong>Eastern Europe</strong><br />
    having more similar cultures with western work ethics and deep engineering roots, we have choosen to place four develoment centers in Lviv and Dninpropetrovsk Ukraine, St. Pete and Yoshkar Russia.
    </P>
    
    
    
    <STRONG><a href='why/default.aspx'>More about our differences ></a></STRONG>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
 
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
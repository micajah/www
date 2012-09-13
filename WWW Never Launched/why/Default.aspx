<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="web.micajah.www.why.Default" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Why choose us?&nbsp; That&#39;s a good question.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    

    
    <h2>Specialized.</h2>
    
    <p><strong>Micajah specializes in Microsoft.NET</strong><br />
        While we have worked on many technologies over the years we are sticking with Microsoft .NET 
        as the most well balanced platform. <a href="specialized.aspx">Read more.</a>
    
    
    </p>
    
    <H2>Legal protection.</H2>
    
    <P><strong>True Us Company</strong><br />with offices in Atlanta, GA, our company is based in the United States.  This provides
    our clients with the type of legal and copyright laws for their software development project. </P>
    
    <h2>Process.</h2>
    
    <p><strong>Human errors can cause havoc</strong><br />
    for software development.  Humans, although great for innovation, can wreak havoc in development
    cycles.  Micajah is relentlessly polishing our systems to drive costs down and errors out of the development process. <a href="specialized.aspx">Read more about processes.</a>
    </p>    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
    <uc1:Contact ID="ContactControl1" runat="server" />        
</asp:Content>
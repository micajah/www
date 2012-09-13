<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="differentiators.aspx.cs" Inherits="web.micajah.www.why.differentiators" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
     What's so great about us.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>Differentiators</H2>
    
    <P><strong>True Us Company</strong><br />with offices in Atlanta, GA, our company is based in the United States.  This provides
    our clients with the type of legal and copyright laws for their software development project. </P>
    
    <P><strong>Specialized in ASP.NET</strong><br />maintaining a core development speciality allows us to build system and process.  The processes
    lead to higher code quality and more predictable results.  
    </P>
    
    <P><strong>Eastern Europe</strong><br />
    having more similar cultures with western work ethics, deep engineering roots, sophisticated engineering education systems, we have choosen to place four develoment centers in Lviv and Dninpropetrovsk Ukraine, St. Pete and Yoshkar Russian, and other Eastern Europe locations.
    </P>
    
   
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
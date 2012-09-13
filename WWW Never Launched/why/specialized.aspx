<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="specialized.aspx.cs" Inherits="web.micajah.www.why.specialized" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Speciality.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <H2>Why specialize.</H2>
    <p>It&#39;s not the languages.&nbsp;&nbsp; Even though the languages are different, it 
        is not too much of a problem for a good engineer to pickup a new language and be 
        up to speed in days.&nbsp; The problem is all the tools surrounding the language 
        take time to learn.&nbsp; Tools like Visual Studio, Internet Information Server, 
        Source Control, etc., take significant time to learn and really understand.&nbsp;&nbsp;&nbsp; 
        Most of the languages today are converging and becoming more and more similar.&nbsp; 
        Microsoft C# and Java are almost identical in syntax, yet they use completely 
        different development environments and deployment models.</p>
    <H2>Microsoft ASP.NET</H2>
    <p>We are not claiming ASP.NET is the final word in web development. We do think it 
        is the best all around in performance, value, speed of development, future 
        growth, and stabally backed by Microsoft.&nbsp; </p>
    <H2>Web based backend apps.</H2>
    <p>Most of our projects are based around web based backoffice type systems. 
        HelpDesk, Accounting, Inventory, Medical Office Management Systems, Intranets, 
        Web Portals all have a similar theme and style.&nbsp; In comparison to Windows 
        Services, Windows Exe Apps, Real-time Apps, etc.&nbsp; </p>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
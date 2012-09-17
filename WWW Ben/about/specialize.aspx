<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="specialize.aspx.cs" Inherits="WWW_Site_2.aboutus.specialize" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Speciality.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        
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

    </div>
    <div class="grid_4 sidebar">
        <uc1:RightMenu ID="RightMenu1" runat="server" />
    </div>
    <div class="grid_12 hire-us">
        <a href="contact.aspx">
            <div class="grid_5 alpha">
                <h2>Interested in Hiring Micajah?</h2>
            </div>
            <div class="grid_7 omega">
                <div class="contact-button">
                    <h2>Click Here or Call Us +1 404 432-9922</h2>
                </div>
            </div>
        </a>
    </div>
</div>

</asp:Content>

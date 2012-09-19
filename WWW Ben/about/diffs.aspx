<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="diffs.aspx.cs" Inherits="WWW_Site_2.aboutus.diffs" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>What's so great about us.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        <H2>Differentiators</H2>
    
    <P><strong>True US Company</strong><br />with offices in Atlanta, GA, our company is based in the United States.  This provides
    our clients with the type of legal and copyright laws for their software development project. </P>
    
    <P><strong>Specialized in ASP.NET</strong><br />maintaining a core development speciality allows us to build system and process.  The processes
    lead to higher code quality and more predictable results.  
    </P>
    
    <P><strong>Eastern Europe</strong><br />
    having more similar cultures with western work ethics, deep engineering roots, sophisticated engineering education systems, we have choosen to place four develoment centers in Lviv and Dninpropetrovsk Ukraine, St. Pete and Yoshkar Russian, and other Eastern Europe locations.
    </P>
    </div>
    <div class="grid_4 sidebar">
        <uc1:RightMenu ID="RightMenu1" runat="server" />
    </div>
   
</div>

</asp:Content>

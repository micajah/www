<%@ Page Title="Micajah - About Us - Atlanta .NET Developer" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WWW_Site_2.about" %>
<%@ Register src="about/RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Why choose Mi-kay-jah?</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        <h2>Specialized.</h2>
            <p><strong>Micajah specializes in Microsoft.NET</strong><br />
            While we have worked on many technologies over the years we are sticking with Microsoft .NET as the most well balanced platform. <a href="about/specialize.aspx">Read more.</a>
            </p>   

        <h2>Legal protection.</h2>
        <p><strong>True Us Company</strong><br />
        with offices in Atlanta, GA, our company is based in the United States.  This provides our clients with the type of legal and copyright laws for their software development project. </p>
        
    </div>
    <div class="grid_4 sidebar">
        <uc1:RightMenu ID="RightMenu1" runat="server" />
    </div>
    
</div>

</asp:Content>

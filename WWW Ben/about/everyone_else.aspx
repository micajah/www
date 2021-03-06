﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="everyone_else.aspx.cs" Inherits="WWW_Site_2.aboutus.everyone_else" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Everyone looks the same.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
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
    </div>
    <div class="grid_4 sidebar">
        <uc1:RightMenu ID="RightMenu1" runat="server" />
    </div>
    
</div>

</asp:Content>

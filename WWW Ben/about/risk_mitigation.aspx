<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="risk_mitigation.aspx.cs" Inherits="WWW_Site_2.aboutus.risk_mitigation" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Risky Business.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        <H2>Sometimes risks are hard to see</H2>

    <p>New application development, although more interesting, has more risk.  In general, software
    development is risky.  It is essential these risks are mitigated in a few ways.  To 
        do this you need
    the right people on the team.  When we say the "right" people, their ability to write JAVA, SQL, or
    some other coding language is the least of your worries.</p>
    
    <p>The easiest way to lower risk is
    to reduce the size and complexity of the app.  This sounds much easier on paper.  In the real world,
    projects can have quite a few "cheifs" all with must have features.  You must have someone strong and 
    experienced to control this situation.  
    </p>
    <p>This requires someone that has seen projects go "bad".  People
    without the first hand experience of a project gone bad will think more features equals a better application.  This logic
    is fundamentally flawed.  Micajah has the first hand experience seeing these projects and knows how to cut
    applications to their core.   This critical skill reduces risk of project failure, reduces costs, and increases
    development speed.  Unless you have years of software development under your belt, you will likely suffer
    feature creep, which if left unchecked, will lead to project failure.  If you engage Micajah we will keep feature creep in check.
    </p>
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

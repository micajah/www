<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="tools.aspx.cs" Inherits="WWW_Site_2.aboutus.tools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Our form of a pocket protector.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        <!--<h2>Tools of the trade.</h2>-->
    
    <p>Here is break down of the tools we use on the day to day...</p>
    <h2>Source Control.</h2>
    <p>This one is important.&nbsp; The source control system is a repository and 
        protector of the projects source code.&nbsp; It is critical in team development 
        and should be used in any project.&nbsp; We use
        <a href="http://msdn.microsoft.com/en-us/library/ms242904.aspx">Team Foundation 
        Server</a> by Microsoft.&nbsp; This system is a central server to ensures all of 
        your source code is safe, think of it as Microsoft Exchange server for software 
        development.&nbsp;&nbsp; Software source code is just a bunch of text files, 
        albiet, expensive text files.&nbsp; As the client, you should be concerned about the safe
        keeping and access to these files.</p>
    <h2>Screen Share</h2>
    <p>Sometimes you need to look at the same thing at the same time. We mainly use 
        GotoMeeting by Citrix.&nbsp; The latest version works great and supports many 
        viewers at one time.&nbsp; Also for one on one we use
        <a href="http://www.bigwebapps.com">bigWebApps Helpdesk Remote Desktop Control</a> 
        to perform one on one live screen shares.</p>
    <h2>Skype</h2>
    <p>Skype is the goto application for voice communications.&nbsp; Most of our day to 
        day quick communication is done via instant messenger.&nbsp; When we need to 
        talk voice, we use skype with a good headset.</p>
    <h2>Bug Tracking</h2>
    <p>We use <a href="http://www.bigwebapps.com">bigWebApps HelpDesk for ticket 
        tracking</a>.&nbsp; This tool is perfect for the job, very easy for anyone to 
        submit change orders into the software development cycle.</p>
    <h2>Screen Capture</h2>
    <p>Snag-it by Techsmith is our goto for screen capture.&nbsp; It is a very simple 
        tool to allow you to capture a screen, draw edits on this screen, and send them 
        to the developers.&nbsp; It saves hundreds and hundreds of typed words.&nbsp; 
        This tool does the heavy lifting for our development change orders and 
        requirements.&nbsp; I could write an book on using this application for software 
        development.&nbsp; It is non negotiable, all of our liasons must have this tool 
        installed.</p>
    <h2>Instant Messaging</h2>
    <p>IM is the core of our communications for quick chats.&nbsp; I know everyone has 
        an opinion on what client or network to use.&nbsp; We use MSN Messenger by 
        Microsoft.&nbsp; We had to standardize on one, and MSN messenger is it, we hope 
        this is not a problem, it is required for all project liasons.</p>
    <h2>Micajah.Common Framework</h2>
    <p>A proprietary framework developed by Micajah.&nbsp; It is a light weight UI layer 
        that sits on top of Microsoft ASP.NET. This framework allows us to get a new 
        application off the ground in days compared to weeks, and saves a non-calculable 
        amount of hours for ongoing development. The framework handles many of the 
        routine tasks each project must handle such as: Login/Logout, Add Users, Roles, 
        Groups, Menus, User Profiles, Grids/Tables, Forms, Notices Areas.&nbsp;&nbsp; 
        Not to toot our horn, but to toot our horn, this thing rocks.&nbsp; Soon we will 
        be releasing it as an open source project with a dedicated website.</p>
    </div>
    <div class="grid_4 sidebar">
        <ul class="sidebar-menu">
            <li class="current"><a href="../aboutus/tools.aspx">Tools</a></li>
            <li><a href="../aboutus/diffs.aspx">Diffs</a></li>
            <li><a href="../aboutus/crap.aspx">Crap</a></li>
            <li><a href="../aboutus/strength.aspx">Strength</a></li>
            <li><a href="../aboutus/specialize.aspx">Specialize</a></li>
            <li><a href="../aboutus/everyone_else.aspx">Everyone Else</a></li>
            <li><a href="../aboutus/risk_mitigation.aspx">Risk Mitigation</a></li>
            <li><a href="../aboutus/costs.aspx">Costs</a></li>
            <li class="gohome"><a href="../">< Home</a></li>
        </ul>
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

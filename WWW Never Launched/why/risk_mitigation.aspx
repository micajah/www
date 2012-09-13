<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="risk_mitigation.aspx.cs" Inherits="web.micajah.www.why.risk_mitigation" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Risky Business.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
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

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
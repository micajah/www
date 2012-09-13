<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="strengths.aspx.cs" Inherits="web.micajah.www.why.strengths" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
    Strengths to consider.
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
<H2>Private Company.</H2>
<p>We are motivated by forward thinking innovative projects.&nbsp; We are not super 
    interested in maintaining your classic asp site, unless you want to convert to 
    .NET :) .&nbsp; Being private, we do not answer to venture capitalist or anyone on 
    Wall Street.&nbsp; You will be talking directly to the people with total 
    authority.</p>
    

    <H2>Eastern Europe.</H2>
<p>Culture and work habits are close to United States culture and have a proven 
    track record for complex engineering.</p>
<H2>Extremely Low Attrition.</H2>
<p>Low turnover dramatically improves long term project value by reducing training 
    costs and project slow downs.</p>
<H2>Complex Web Engineering.</H2>
<p>Micajah and our Engineers have a track record of tackling complex web projects 
    while keeping an eye on total cost and value.</p>
<H2>Attitude.</H2>
<p>You either have it or you don&#39;t.&nbsp; We like to think we bring a realistic, 
    fun, and value oriented attitude to the projects we participate.</p>
<H2>Loose Requirements.</H2>
<p>I read a lot of articles on the latest development methodology 
    and about how they are going to build these great requirements docs.&nbsp; I 
    haven&#39;t seen to many of these&nbsp; perfect documents on the projects I have been assigned. Normally you 
    have a few pages, some screenshots, maybe a few emails, and a pat on the back.&nbsp; 
    We have developed some ways to get low doc projects off the ground while keeping 
    the risk minimized.&nbsp; </p>
<H2>Micajah&#39;s Staff Come First</H2>
<p>For full disclosure, we make decisions weighted in this order:&nbsp; Micajah 
    Staff, Client, then Investors.&nbsp; Some people may not agree with this order.&nbsp;&nbsp;&nbsp; 
    In pubicly traded companies the shareholder is first, this means the best case 
    scenario for the Client is still second place.&nbsp; If we can attract and retain 
    great talent to work for us, we will do outstanding work, good clients will come 
    to us.&nbsp; We try to keep great people by making sure we have cool clients 
    with fun exciting projects.&nbsp; If your project is not so cool, it could cause 
    us to drive off great talent.&nbsp; We 
    are vigilant about keeping bad projects out.</p>
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
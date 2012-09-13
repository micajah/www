<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="load_of_crap.aspx.cs" Inherits="web.micajah.www.why.load_of_crap" %>
<%@ Register src="~/Controls/Contact.ascx" tagname="Contact" tagprefix="uc1" %>
<%@ Register src="~/Controls/GetStarted.ascx" tagname="GetStarted" tagprefix="uc1" %>
<%@ Register src="~/Controls/LeftMenu.ascx" tagname="LeftMenu" tagprefix="uc1" %>
<asp:Content ID="TopBand1" ContentPlaceHolderID="TopBand" runat="server">
     Here comes the poo.
    <!--...committed to extracting inefficiency from the software development process..-->
    <!-- .. specialized in offshore ASP.NET software development.. -->
</asp:Content>
<asp:Content ID="MainContent1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Customer is # 1</h2>
    
    <p>Yep, here at <span style="text-decoration: line-through">Acme</span>Micajah, the customer is #1. We focus on things like customer service.  We
    like to build a relationship with our clients.  You know, &quot;The Customer is Always 
        Right!&quot;.&nbsp;&nbsp;&nbsp; Our client&#39;s needs come first.&nbsp; We understand 
        your time is valuable and we strive to provide each client with the professional 
        service are care they deserve.&nbsp;&nbsp; We are committed to forming a lasting 
        relationship with our clients and offering them the highest level of customer 
        service.&nbsp; Did I already say that?&nbsp; Well, I&#39;ll say it again, it&#39;s real 
        good, we offer the highest level of customer service.</p>
    
    <h2>Full Service</h2>
    
    <p>We are full service.  We do everything, that's right. Let's make a list here to prove it:
    Sql Server, PHP, Perl, C++, Cybase, C#, Ruby, Cobol,...  Whoo, my fingers are tired, better yet, we do 
    everything these people do, plus probably some more, 
    <a rel="nofollow" href="http://www.softage.ru/skills/">http://www.softage.ru/skills/</a>.  Did
    I mention Fortan?  We do it.
    </p>
    
    <p><strong>Punch Cards.</strong> Since we are "full service" we also can handle your punch cards
    programming in case you have some old legacy system you just can't put down.</p>
    
    
    <h2>Misc (its a working heading)</h2>
    <p>While developing software products we use modern, well, and proven technologies in practice. 
    As a result we rapidly and qualitatively complete tasks set by our customers. 
    The developed system fully satisfies customer requirements and contains a wide set of 
    abilities for broadening the system functions in the future. </p>

    <p>At the same time we wish to give our customers an opportunity to perfect their software 
    products and applications developed using older technologies. For this purpose we retain 
    specialists for working knowledgeable in working with these technologies.</p>
    
    <p><strong>Wait a minute...</strong>  We actually cut and pasted the section above. What is "older technologies?" 
        Maybe
    we don't do this, or... if it makes you feel good, then, yes, we do "older technologies" too.</p>
    
    <p>Did I mention "Team Building"?  ...&nbsp; We do a lot of that here.</p>

    
   
    

</asp:Content>

<asp:Content ID="SideBar1" ContentPlaceHolderID="SideBarHolder" runat="server">

    
    <uc1:LeftMenu ID="LeftMenu1" runat="server" />
  
    <!--<uc1:GetStarted ID="GetStartedControl" runat="server" />-->
    
    <uc1:Contact ID="ContactControl1" runat="server" />
        
</asp:Content>
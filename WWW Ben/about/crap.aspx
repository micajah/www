<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="crap.aspx.cs" Inherits="WWW_Site_2.aboutus.crap" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Here comes the poo.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
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

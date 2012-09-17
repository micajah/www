<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="costs.aspx.cs" Inherits="WWW_Site_2.aboutus.costs" %>
<%@ Register src="RightMenu.ascx" tagname="RightMenu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Cost control.</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_8 content">
        <h2>Reduced Layers</h2>
<p>To control costs and increase likelihood of project success we put software stakeholders
in direct contact with actual engineers. Rather it is via email, ticket tracking 
    system, or instant messenger, keeping the developer close to the end software 
    user is considered very important to us.</p>

<h2>RFPs</h2>
<p>We don&#39;t respond to RFPs. These are giant time drains on client and vendors. The 
    only people we have seen that win RFPs are the people that drafted the RFP or 
    big companies with $175 hourly rates that can afford to pay people all day 
    responding to these things.&nbsp; If you would like an estimate on your project, 
    we would be excited to provide it, we only request that you meet us face to 
    face. If you put the effort into coming to our office, we will help estimate 
    your project.</p>
    
<h2>But I want it fixed cost.</h2>
<p>I will explain why you don't really want this.  No one, including me, Micajah staff, you, your brother really know
what your software project is going to cost.  There are too many unknowns and variables on any project to really know.  We can
get decently close and get some reasonable range in place.  If you demand a fixed cost bid, which Micajah will not provide, there
is only one real thing the vendor can do, which is, pad the hell out of it.  Out of the gate, there are three scenarios: a.) the vendor
makes a windfall profit b.) the vendor looses money c.) the vendor guessed very very well (unlikely).  
</p>
<p>On day one your project starts. On that very day, the instant you signed development documents, you and the
developer are pitted against each other.   You now have a locked in price and want to get in as many "must have" features
as possible and the developer is trying to do a little work as possible and collect their check.  Maybe a few of these
type deals have worked out, the majority do not work out well for one or both parties.</p>
<h2>Okay, if not fixed how do I protect myself?</h2>
<p>There are two primary ways you can protect yourself here...</p>
<p><b>Cut the features to the core</b>, then cut them again.  Any idiot can sit around and think of a new feature, or say "we need this thing
like facebook has".  A genius is able to sit in the room and say <b><i>"what is absolutely critical to deploy this app on day 1"</i></b>, (like Steve Job genius)</p>

<p>If you want to be the smartest guy/gall in the room, go work for Goldman Sachs.  If banking is not your gig and you find yourself
on a software project, then <i>cut the development features to the absolute smallest minimum function that will do a real unit of work.</i>
Don't be that tard that sits in the room and say "it would be cool if..."</p>

<p>the other option ...</p>
<p><b>Break into Chunks.</b>Take your project and break it into small deliverable chunks.  When the developer finishes that chunk, pay up, and move to the next
chunk.  Say you have a development range of 100-150k, maybe break into 10K chunks. Two weeks of work is another good way to divide.  This method keeps your and the developer's interest
aligned. The developer needs you to be happy to keep authorizing more chunks.  <i><b>You need the developer to be happy so he answers the phone when you call.</b></i></p>
<p>If a person or company can write software at any level, chances are they are not starving.  Withholding payments or strong arm tactics are very 
rarely going to get you where you want to be, unless the other guy is going to loose their house and kids if they don't comply</p>
<p><b>It has to be Win-Win</b>. I know the phrase is played out.  Clients and 
    vendors really need to figure out ways to structure agreements in which both
parties interest are aligned in the deal.  Fixed costs projects will have you pitted against each other no 
    later than immediately as you sign the
docs.</p>


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

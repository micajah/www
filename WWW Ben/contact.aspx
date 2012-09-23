<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WWW_Site_2.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Tell us about your project?</h1>
  </div>

</div>
   





<div class="container_12 sub-main">
    <asp:Panel ID="Success" Visible=false runat="server">
        <div class="grid_7">
        <h2>Your message has been sent successfully!</h2>
        </div>
    </asp:Panel>

    <asp:Panel ID="contactForm" runat="server">
    <div class="grid_7">
        <div class="section">
            <label for="name">Name</label>
            <asp:TextBox ID="Name" runat="server" />
        </div>
        <div class="section">
            <label for="email">Email</label>
            <asp:TextBox ID="Email" runat="server"  />
        </div>
        <div class="section">
            <label>Give us you elevator pitch. What is your product or service?</label>
            <textarea id="Elevator" runat="server" />

        </div>
        <div class="section">
            <label for="email">What is the annual budget for this project?</label>
            <asp:DropDownList ID="Budget" CssClass="field select medium" runat="server">
                <asp:ListItem Value="Please choose" />
                <asp:ListItem Value="$10k to $50k" />
                <asp:ListItem Value="$50k to $100k" />
                <asp:ListItem Value="$100k to $250k" />
                <asp:ListItem Value="$250K +" />
            </asp:DropDownList>

        </div>
        <div class="section">
            <label>What are your deadlines? When do you want to launch?</label>
            <textarea id="Deadline" rows="3" runat="server"></textarea>
        </div>
        <div class="section">
            <label>Tell us about your audience.  Who will use your product?</label>
            <textarea id="Audience" rows="3" runat="server"></textarea>
        </div>
        
        <div class="section">
            <label for="URL">If you have an existing web application or prototype, what's the URL?</label>
            <asp:TextBox ID="URL" runat="server" />
        </div>

        <div class="section">
            <label>What do you understand about your product or service that others don't?</label>
            <textarea id="Understand" rows="3" runat="server"></textarea>
        </div>

        <div class="section">
            <label>How do you, or will you, make money?</label>
            <textarea id="Money" rows="3" runat="server"></textarea>
        </div>
        <div>
            
            <asp:Button ID="Contact" runat="server" Text="Contact Us" OnClick="ContactUs_Click" CssClass="contact-us" />
        </div>
    </div>
    </asp:Panel>

    <div class="grid_4 push_1 omega">
        <div class="side-section">
            <div class="sidebar-label">Phone Jon @</div>
            <div class="sidebar"><p>(404) 432-9922</p></div>
        </div>
        <div class="side-section">
            <div class="sidebar-label">Email</div>
            <div class="sidebar"><p>jon@micajah.com</p></div>
        </div>
        <div class="side-section">
            <div class="sidebar-label">Address</div>
            <div class="sidebar">
                <p>
                    1447 Peachtree St NE STE 880<br />
                    Atlanta, GA 30309-3001
                </p>
            </div>
        </div>
    </div>
</div>

</asp:Content>

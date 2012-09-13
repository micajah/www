<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WWW_Site_2.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container_12 main">

  <div class="grid_12 headline">
  	<h1>Tell us about you?</h1>
  </div>

</div>

<div class="container_12 sub-main">
    <div class="grid_7">
        <div class="section">
            <label for="name">Name</label>
            <input type="text" />
        </div>
        <div class="section">
            <label for="email">Email</label>
            <input type="text" />
        </div>
        <div class="section">
            <label>Give us you elevator pitch. What is your product or service?</label>
            <textarea rows="12"></textarea>
        </div>
        <div class="section">
            <label for="email">What is the budget for this project?</label>
            <select id="Field146" name="Field146" class="field select medium" onclick="handleInput(this);" onkeyup="handleInput(this);" tabindex="6" > 
                <option value="Please choose" selected="selected">
                Please choose
                </option>
                <option value="$10k to $50k" >
                $10k to $50k
                </option>
                <option value="$50k to $100k" >
                $50k to $100k
                </option>
                <option value="$100k to $250k" >
                $100k to $250k
                </option>
                <option value="$250k to $500k" >
                $250k to $500k
                </option>
                <option value="$500k or more" >
                $500k or more
                </option>
            </select>
        </div>
        <div class="section">
            <label>What are your deadlines? When do you want to launch?</label>
            <textarea rows="8"></textarea>
        </div>
        <div class="section">
            <label>Tell us about your audience.  Who will use your product?</label>
            <textarea rows="8"></textarea>
        </div>
        <div class="section">
            <label>Which of the following services do you think you need?</label>
            <div class="clearfix"></div>
            <input id="Field12" name="Field12" type="checkbox" class="field checkbox" value="Web application design (HTML/CSS)" tabindex="9" onchange="handleInput(this);" />
            <label class="choice" for="Field12">Web application design (HTML/CSS)</label>
            <div class="clearfix"></div>
            <input id="Field13" name="Field13" type="checkbox" class="field checkbox" value="Web application development (Ruby on Rails)" tabindex="10" onchange="handleInput(this);" />
            <label class="choice" for="Field13">Web application development (.NET)</label>
            <div class="clearfix"></div>
            <input id="Field18" name="Field18" type="checkbox" class="field checkbox" value="Mobile development" tabindex="11" onchange="handleInput(this);" />
            <label class="choice" for="Field18">Mobile development</label>
            <div class="clearfix"></div>
            <input id="Field16" name="Field16" type="checkbox" class="field checkbox" value="E-commerce development (recurring or one-time billing)" tabindex="12" onchange="handleInput(this);" />
            <label class="choice" for="Field16">E-commerce development (recurring or one-time billing)</label>
            <div class="clearfix"></div>
            <input id="Field14" name="Field14" type="checkbox" class="field checkbox" value="API development" tabindex="13" onchange="handleInput(this);" />
            <label class="choice" for="Field14">API development</label>
            <div class="clearfix"></div>
            <input id="Field17" name="Field17" type="checkbox" class="field checkbox" value="Introductions to angel investors and VCs" tabindex="15" onchange="handleInput(this);" />
            <label class="choice" for="Field17">Introductions to angel investors and VCs</label>
        </div>

        <div class="section">
            <label for="email">If you have an existing web application or prototype, what's the URL?</label>
            <input type="text" />
        </div>

        <div class="section">
            <label>What do you understand about your product or service that others don't?</label>
            <textarea rows="8"></textarea>
        </div>

        <div class="section">
            <label>How do you, or will you, make money?</label>
            <textarea rows="8"></textarea>
        </div>
        <div>
            <input type="submit" class="contact-us" value="Contact Us" />
        </div>
    </div>

    <div class="grid_4 push_1 omega">
        <div class="side-section">
            <div class="sidebar-label">Phone</div>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="help1.aspx.cs" Inherits="help1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">
        <div class="box1">
          <div class="line1">
            <div class="line2 wrapper">
                   <section class="col1 pad_left1">
                <h2 class="color2"><strong>J</strong>oin<span> Volunteer</span></h2>
                <div class="pad_bot1">
                  <figure><img src="images/page4_img2.jpg" alt=""></figure>
                </div>
               By making donations to Hope center are eligible for tax exemption under section 80G of Income Tax Act 1961.
                <%--<a href="login.aspx" class="button1 color2">Join</a>--%> 
                <asp:Button ID="Button1" runat="server" Text="join" CssClass="button1 color2" 
                       onclick="Button1_Click" ></asp:Button>
                
                </section>
                <section class="col1">
                <h2><strong>M</strong>ake<span> Donations</span></h2>
                <div class="pad_bot1">
                  <figure><img src="images/page4_img1.jpg" alt=""></figure>
                </div>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. 
                <a href="donate.aspx" class="button1">Donate</a> </section>
         
              <section class="col1 pad_left1">
                <h2 class="color3"><strong>H</strong>elp<span> People</span></h2>
                <div class="pad_bot1">
                  <figure><img src="images/page4_img3.jpg" alt=""></figure>
                </div>
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                <a href="Help_us.aspx" class="button1 color3">Help</a> </section>
            </div>
          </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="pad_left2">
          <h4><span>How Donations </span>Row to Communities</h4>
          <p class="pad_bot2"><strong>We hope to achieve the following milestones by the Year 2025: Livelihood security directly for 50 thousand deprived families. Rehabilitation of 10000 orphan and street children by providing quality education support. <p>envisions a society where women, children, elderly have the right to an active, 
              healthy and dignified life. We are integrating our programmes and services, and 
              consciously moving from welfare towards development and long term sustainability 
              for all the deprived. We are working closely with SHG women groups, Street 
              Children, Disabled persons and encouraging them to speak up for their own 
              rights. In our continuing fight against poverty, isolation and neglected persons 
              though we have made significant strides, but they are just a drop in the ocean.
 </div>
      </div>
      <div class="wrapper">
        <div class="box2">
          <div class="wrapper">
            <section class="col1">
              <div class="wrapper"> <a href="Help_us.aspx" class="left marg_right1"><img src="images/banner.jpg" alt=""></a>
                <p class="pad_bot2"><strong>How Can You Donate?</strong></p>
                Our humanitarian signature programs are built on the principles of personal responsibility, community support, self-reliance, and sustainability. We employ these principles even during times of critical aid and emergency response. Our efforts are designed to give individuals and communities the tools they need to improve their own circumstances in permanent and meaningful ways.</div>
            </section>
          </div>
        </div>
      </div>
    </strong>
</asp:Content>


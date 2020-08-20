<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="wrapper">
        <div class="box1">
          <div class="line1 wrapper">
            <section class="col1">
              <h2><strong>O</strong>ur<span>Address</span></h2>
              <strong class="address"> Country:<br>
              City:<br>
              Zip Code:<br>
              Telephone:<br>
              Fax:<br>
              E-Mail: </strong> India<br>
              Jalandhar<br>
              144001<br>
              +0181 5635600<br>
              +081 5635610<br>
              <a href="#">hopecenter@gmail.com</a> </section>
            <section class="col2 pad_left1">
              <h2 class="color2"><strong>M</strong>iscellaneous<span>info</span></h2>
              <p class="pad_bot1"> At Hope Centre we believe that every person has been born with incredible potential and is unique. However, our paths can take some unexpected turns and despite our best efforts we may find that we need help through a crisis. Hope Centre is about meeting people where they are at, listening to them and understanding what they have experienced. We offer a message of hope that their best days are still ahead of them and that, together, we can walk a journey of restoration.    </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="pad_left2 relative">
          <h4 class="color3"><span>Give </span>Suggestions</h4>
          <img src="images/page6_img1.png" alt="" class="img1">
          <form id="ContactForm" action="#">
            <div>
            <table>
            <tr>
              <td>
                  <asp:Label ID="Label2" runat="server" ForeColor="#CCCCCC" Text="Your Name :"></asp:Label>
                </td>
               <td>  <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="b"></asp:TextBox>  
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                       ForeColor="Red" ErrorMessage=" *  Name Required" 
                        ControlToValidate="TextBox1" ValidationGroup="b"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                       ControlToValidate="TextBox1" Display="Dynamic" 
                       ErrorMessage="* Enter valid name" ForeColor="Red" 
                       ValidationExpression="^[a-z A-Z]*$" Width="127px"></asp:RegularExpressionValidator>
            </td> 
              
              </tr>
              <tr>
              <td>
                  <asp:Label ID="Label3" runat="server" ForeColor="#CCCCCC" 
                      Text="Your E-mail Id :"></asp:Label>
              </td>
              <td>
                 <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="b"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                      ControlToValidate="TextBox2" ErrorMessage=" *  Email required"  Display="Dynamic" 
                      ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator_3" 
                            runat="server" ControlToValidate="TextBox2" Display="Dynamic" 
             ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="282px" 
                      ValidationGroup="b">*Email Format Required</asp:RegularExpressionValidator>
          
             </td></tr>
               <tr>
              <td>
                  <asp:Label ID="Label4" runat="server" ForeColor="#CCCCCC" Text="Your Conatct :"></asp:Label>
                   </td>
               <td>  <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="b"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                       ControlToValidate="TextBox3" ErrorMessage=" *  Contact required" Display="Dynamic" 
                       ForeColor="Red" ValidationGroup="b"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                     runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="TextBox3" Display="Dynamic" 
                     Width="284px" ValidationGroup="b"></asp:RegularExpressionValidator>
              </td>
              </tr>
              <tr>
              <td>
                  <asp:Label ID="Label5" runat="server" ForeColor="#CCCCCC" 
                      Text="Message / Feedback :"></asp:Label>
              </td>
              <td>
                 <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                      ValidationGroup="b"></asp:TextBox>  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ForeColor="Red" ErrorMessage=" *  Message Required" 
                        ControlToValidate="TextBox4" ValidationGroup="b"></asp:RequiredFieldValidator>
              </td>
              </tr><tr>
              <td></td>
              <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button1" runat="server" Text="Send" BackColor="#FFCC00"  
                      Font-Size="20px" Width="80px"
                    onclick="Button1_Click" ValidationGroup="b"  />
                   </td> </tr>
                    </table>
          </form>
        </div>
      </div>
</asp:Content>


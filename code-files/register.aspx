<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<table cellpadding="3px" cellspacing="0" border="0" style="height: 234px; width: 100%">
                
                
                
                
                
                <tr>
                    <td class="style1" >
                        <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="#CCCCCC"></asp:Label></td>
                    <td style="font-family: 'Gill Sans MT Condensed'; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; color: #FFFFFF; background-color: transparent; " 
                    class="style1">
                    <asp:TextBox ID="name_1" runat="server" Width="200px" Font-Names="Arial" 
                            Font-Size="Small"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_1" runat="server" 
                    ControlToValidate="name_1" ErrorMessage=" * FirstName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ForeColor="Red" ErrorMessage=" * enter in char form" 
               ValidationExpression="^[a-z A-Z]*$" ControlToValidate="name_1" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br />
                    </td>
                    <td rowspan="5" class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        <br /> &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:Image ID="Image1" runat="server" Height="118px" Width="140px" 
                            ImageUrl="~/images/page1_img3.jpg" />
                        
                       </td></tr>
               
                 
                <tr>
                    <td class="auto-style3" > 
                        <asp:Label ID="Label2" runat="server" ForeColor="#CCCCCC" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    
                    <ContentTemplate>
                    
                    <asp:TextBox ID="uname" runat="server"  AutoPostBack="True" Width="200px" 
                            OnTextChanged="uname_TextChanged"></asp:TextBox> &nbsp;
                    <asp:Image ID="imgstatus" runat="server" Height="18px" ImageAlign="AbsMiddle" Visible="False" Width="18px" />&nbsp;
                    <asp:Label ID="lblstatus" runat="server" Text="Label"  Visible="False"></asp:Label> &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="uname" Display="Dynamic"
                     ErrorMessage=" * valid username Required" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator> &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uname" ErrorMessage=" * UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ForeColor="Red" ErrorMessage=" * enter in char form" 
               ValidationExpression="^[a-z A-Z]*$" ControlToValidate="uname" Display="Dynamic"></asp:RegularExpressionValidator>
                    
                    <br />
                   
                   </ContentTemplate>
                   
                   </asp:UpdatePanel>
                    </td> </tr>
               

                <tr>
                    <td class="auto-style1" >
                        <asp:Label ID="Label3" runat="server" ForeColor="#CCCCCC" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style2">
                    <asp:RadioButtonList ID="gender" runat="server" Font-Size="Small" 
                    RepeatDirection="Horizontal" Width="199px" Height="16px" ForeColor="#CCCCCC" >
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="gender" ErrorMessage=" * Gender Required" ForeColor="Red"></asp:RequiredFieldValidator>
              
                        
                    </td></tr>
                

                <tr>
                    <td >
                        <asp:Label ID="Label4" runat="server" ForeColor="#CCCCCC" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td class="style1"> &nbsp;<asp:DropDownList ID="day" runat="server" Width="48px" onselectedindexchanged="day_SelectedIndexChanged" 
                            >
                            <asp:ListItem>Day</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ForeColor="Red" ErrorMessage=" * " 
                        ControlToValidate="day" ValidationGroup="reg"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="month" runat="server" Width="65px" 
                            >
                            <asp:ListItem>Month</asp:ListItem>
                            <asp:ListItem>January</asp:ListItem>
                            <asp:ListItem>February</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>August</asp:ListItem>
                            <asp:ListItem>September</asp:ListItem>
                            <asp:ListItem>October</asp:ListItem>
                            <asp:ListItem>November</asp:ListItem>
                            <asp:ListItem>December</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ErrorMessage=" * " 
                        ControlToValidate="month"></asp:RequiredFieldValidator>
  



                        <asp:DropDownList ID="year" runat="server" 
                         Width="64px">
                        <asp:ListItem>Year</asp:ListItem>
                        </asp:DropDownList>





                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ErrorMessage=" * " 
                        ControlToValidate="year"></asp:RequiredFieldValidator>
                       </td></tr>
                
              
                <tr>
                    <td >
                        <asp:Label ID="Label5" runat="server" ForeColor="#CCCCCC" Text="Email Id"></asp:Label>
                    </td>
                    <td class="style1">
                    <asp:TextBox ID="email" runat="server" Width="200px" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator_3" runat="server" ControlToValidate="email" Display="Dynamic" 
             ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Email Format Required</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="email" Display="Dynamic" 
            ErrorMessage=" * Email Required" ForeColor="Red" SetFocusOnError="True"> * Email Required</asp:RequiredFieldValidator>
            </td></tr>
                
                  
            <tr>
                <td >
                    <asp:Label ID="Label6" runat="server" ForeColor="#CCCCCC" Text="Password"></asp:Label>
                </td>
                <td style="font-family: 'Gill Sans MT Condensed'; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; color: #FFFFFF; background-color: transparent;" 
                 class="style1">
                <asp:TextBox ID="password1" runat="server" TextMode="Password"  Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="password1" Display="Dynamic" ErrorMessage=" * enter valid password" ForeColor="Red" 
                ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,8})$"></asp:RegularExpressionValidator>
              
               <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="password1" Display="Dynamic" 
                    ErrorMessage=" * valid password Required" ForeColor="Red"></asp:CustomValidator>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password1" Display="Dynamic" 
                    ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    </td>
                <td class="style32">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;</td></tr>
            
            
            <tr>
                <td >
                    <asp:Label ID="Label7" runat="server" ForeColor="#CCCCCC" 
                        Text="Confirm Password"></asp:Label>
                </td>
                <td class="style1">
                <asp:TextBox ID="Confirmpwd" runat="server"  Width="200px" TextMode="Password" ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="Confirmpwd" ErrorMessage="* password Does't Macth" 
                    ForeColor="Red" ControlToCompare="password1"></asp:CompareValidator></td>
               
                 <td> &nbsp;</td></tr>
            

                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" ForeColor="#CCCCCC" Text="Occupation"></asp:Label>
                    </td>
                    <td class="style1">
                    <asp:TextBox ID="occupation" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="occupation" ErrorMessage=" * Occupation Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    </td>
                    <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;</td>
                </tr>
         
                <tr>
                 <td >
                     <asp:Label ID="Label9" runat="server" ForeColor="#CCCCCC" Text="Address"></asp:Label>
                    </td>
               <td style="font-family: 'Gill Sans MT Condensed'; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; color: #FFFFFF; background-color: transparent;" 
               class="style1">
                   <asp:TextBox ID="address" runat="server" Width="200px" 
                       TextMode="MultiLine"></asp:TextBox>
                   <br />
               </td>
               <td></td></tr>
            <tr>
            <td >
                <asp:Label ID="Label10" runat="server" ForeColor="#CCCCCC" Text="Telephone No:"></asp:Label>
                </td>
             <td class="style1">
             <asp:TextBox ID="telephonecode1" runat="server" Width="50px" 
                    MaxLength="4"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ForeColor="Red" ErrorMessage=" * " 
               ValidationExpression="^[0-9]*$" ControlToValidate="telephonecode1" Display="Dynamic"></asp:RegularExpressionValidator>
             <asp:TextBox ID="teleno" runat="server"  Width="130px" CssClass="textbox" 
                     MaxLength="7"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="teleno" Display="Dynamic"></asp:RegularExpressionValidator>

                 <br />

             </td><td>
             </td></tr>
                
              <tr>
             <td class="style1" >
                 <asp:Label ID="Label11" runat="server" ForeColor="#CCCCCC" Text="Mobile No."></asp:Label>
                  </td>
             <td class="style1">
             <asp:TextBox ID="mobileno" runat="server"  Width="200px" CssClass="textbox"  
                     MaxLength="10"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mobileno" Display="Dynamic" 
              ErrorMessage="* Mobile no. Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="mobileno" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br />
                    </td>
                    <td class="style1"> 
                    </td>
                </tr>
               
              <tr>
             <td >
                 <asp:Label ID="Label12" runat="server" ForeColor="#CCCCCC" 
                     Text="Security Question"></asp:Label>
                  </td>
             <td class="style1">
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>who was your Favourite Teacher</asp:ListItem>
                     <asp:ListItem>which was the your Birth Place</asp:ListItem>
                     <asp:ListItem>which one is your favourite Color</asp:ListItem>
                     <asp:ListItem>What is the Name of your Pet</asp:ListItem>

                 </asp:DropDownList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="DropDownList1"
              ErrorMessage="* select Question" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              
                                  <br />
                    </td>
                    <td> 
                    </td>
                </tr>
               <tr>
             <td >
                 <asp:Label ID="Label13" runat="server" ForeColor="#CCCCCC" 
                     Text="Security Answer"></asp:Label>
                   </td>
             <td class="style1">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox1"
              ErrorMessage="* Answer Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              
                                  <br />
                    </td>
                    <td> 
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label14" runat="server" ForeColor="#CCCCCC" Text="Agreement"></asp:Label>
                    </td>
                    <td >
                  <asp:RadioButtonList ID="agree" runat="server"  
                    RepeatDirection="Horizontal" Width="508px" Height="53px" 
                    Font-Names="Arial" ForeColor="#CCCCCC">
                 <asp:ListItem>I Agree With Terms and Conditions</asp:ListItem>
                  <asp:ListItem>Do Not Agree With Terms And Conditions</asp:ListItem>
                  </asp:RadioButtonList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ForeColor="Red" ErrorMessage=" * enter agreement" ControlToValidate="agree">
                  </asp:RequiredFieldValidator>
                    </td></tr>
                
                
                <tr>
                    <td style="font-family: 'Gill Sans MT Condensed'; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; color: #FFFFFF; " 
                        class="style2">
                    </td>
                    <td class="style1">
                        <br />
                        <asp:Button ID="btn_accept" runat="server" Text="I Accept"  
                            onclick="btn_accept_Click" BackColor="#FFCC00"  Font-Size="20px" 
                            Width="80px"/>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                </tr>
            </table>
</asp:Content>


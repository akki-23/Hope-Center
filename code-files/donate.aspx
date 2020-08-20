<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="donate.aspx.cs" Inherits="donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        width: 367px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table align="center" width="100%">
<tr>
            <td class="style2">
                </td>
            <td>
               
              
                 <h4>Search</h4>
                 <p>&nbsp;</p>
               
            
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="UserNamee" runat="server" Text="Cause" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    ValidationGroup="c">
                    <asp:ListItem>Children</asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                    <asp:ListItem>Elderly</asp:ListItem>
                    <asp:ListItem>Health</asp:ListItem>
                    <asp:ListItem>Poor</asp:ListItem>

                </asp:DropDownList>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ForeColor="Red" ErrorMessage=" * Cause Required " 
                        ControlToValidate="DropDownList2" ValidationGroup="c"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            
            <td rowspan="5" >
                                <asp:Image ID="Image2" runat="server" Height="200px" 
    ImageUrl="~/images/charity.jpg" Width="200px" /></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Location" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    ValidationGroup="c">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage=" * Location Required " 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            
            
        </tr>
       
        <tr>
            <td class="style2">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="NGO" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
        
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    ValidationGroup="c">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="DropDownList4" ErrorMessage=" * Ngo Required " 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
                <br />
                <br />
            
        </tr>

        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="I Want To Donate" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="72px" ValidationGroup="c"></asp:TextBox>
               &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="INR(Rs.)" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="DropDownList4" ErrorMessage=" * Amount Required " 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="TextBox1" Display="Dynamic" 
                    ValidationGroup="c"></asp:RegularExpressionValidator>


                <br />
                &nbsp;
               
            </td>
             
            
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Tax Benefits" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    ValidationGroup="c">
                    <asp:ListItem>35AC-100% Benefit-For Indian Taxpayers</asp:ListItem>
                    <asp:ListItem>80G-50% benefit-For Indian Taxpayers</asp:ListItem>
                    <asp:ListItem>501(c)3-100% Benefit-For US Taxpayers</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="DropDownList4" ErrorMessage=" * Selection Required " 
                    ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            
            
        </tr>

        <tr>
            <td class="style2">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
            </td>
            <td class="style3">
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Donate"  
                    BackColor="#FFCC00"  Font-Size="20px" Width="80px" Font-Bold="True" 
                    ValidationGroup="c"/>
            </td>
               
        </tr>
        
        
        
    </table>
</asp:Content>


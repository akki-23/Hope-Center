<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="forget_pasword.aspx.cs" Inherits="forget_pasword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
    <tr>
    <td></td>
    <td><h4>Recover your Password</h4>
        <p>&nbsp;</p></td>
    </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label3" runat="server" Font-Bold="False" Font-Names="Times New Roman" 
                    Font-Size="X-Large" ForeColor="#CCCCCC" Text="Username"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2">
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="a" 
                    Width="200"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="login_uname" Display="Dynamic" 
                    ErrorMessage="* Enter valid username" ForeColor="Red" 
                    ValidationExpression="^[a-z A-Z]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please Enter UserName" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            
            <td rowspan="3" >
              <asp:Image ID="Image1" runat="server" Height="143px" 
                    ImageUrl="~/images/img1.jpg" Width="191px" /></td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" 
                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" 
                    ForeColor="#CCCCCC" Text="Security Question"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style3">
               <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="a">
                     <asp:ListItem>who was your Favourite Teacher</asp:ListItem>
                     <asp:ListItem>which was the your Birth Place</asp:ListItem>
                     <asp:ListItem>which one is your favourite Color</asp:ListItem>
                     <asp:ListItem>What is the Name of your Pet</asp:ListItem>

                 </asp:DropDownList> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="DropDownList1"
              ErrorMessage="* select Question" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
              
            </td>
            
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" 
                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" 
                    ForeColor="#CCCCCC" Text="Security Answer"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
             
               <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="a"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox1"
              ErrorMessage="* Answer Required" ForeColor="#CC0000" ValidationGroup="a"></asp:RequiredFieldValidator>
             
            </td>
            
        </tr>
        <tr>
            <td class="style1">
             
            <td class="style1">
               
                <br />&nbsp; 
                <asp:Button ID="loginbtn_submit" runat="server" BorderColor="White" 
                    OnClick="loginbtn_submit_Click" style="height: 26px" 
                    Text="Submit" ValidationGroup="a" BackColor="Black" 
                    ForeColor="#CCCCCC" Font-Size="20px"  />
            
            </td>
        </tr>

        <caption>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </caption>
        <tr>
            <td class="style1">
            </td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <h4>
                    <asp:Label ID="Label2" runat="server" ></asp:Label></h4>
                </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
</asp:Content>


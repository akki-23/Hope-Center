<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
    <td></td>
    <td><h4>Login Users and Admin</h4>
        <p>&nbsp;</p></td>
    </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="UserNamee" runat="server" Text="User Name" Font-Size="20px" 
                    ForeColor="#CCCCCC"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="login" 
                    Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please Enter UserName" 
                    ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ErrorMessage=" * enter in char form" 
               ValidationExpression="^[a-z A-Z]*$" ControlToValidate="login_uname" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            
            <td rowspan="3" >
              <asp:Image ID="Image1" runat="server" Height="230px" 
                    ImageUrl="~/images/img1.jpg" Width="365px" /></td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Passwordd" runat="server" Text="Password" Font-Size="20px" ForeColor="#CCCCCC"></asp:Label>
                &nbsp;&nbsp;
            </td>
            <td class="style3">
                <asp:TextBox ID="login_pwd" runat="server" EnableViewState="False" 
                    TextMode="Password" ValidationGroup="login" Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="login_pwd" ErrorMessage=" * Please Enter Password" 
                    ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
</td>
            
        </tr>
        
        <tr>
            <td>
             
            <td class="style3">
               
                <br />
                  &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="False" Font-Size="20px" 
                    Text="Remember Me"  ForeColor="#CCCCCC"/>
                <br />
                <br />
                  
                   &nbsp;
                  
                <asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="20px" 
                    class="style3" Text="Recover Password" onclick="LinkButton1_Click" 
                    ForeColor="#CCCCCC" PostBackUrl="~/forget_pasword.aspx"></asp:LinkButton >
                <a class="link" href="forget_password.aspx">
             </a><br />
                <br />&nbsp; 
                <asp:Button ID="loginbtn_submit" runat="server" BorderColor="White" 
                    OnClick="loginbtn_submit_Click" style="height: 26px" 
                    Text="Submit" ValidationGroup="login" 
                    BackColor="#FFCC00"  Font-Size="20px" Width="80px" />
            
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
                <a href="register.aspx" style="color: #CCCCCC"><h2>
                    <asp:Label ID="Label2" runat="server" BorderColor="White" ForeColor="#CCCCCC" 
                        Text="Register New User"></asp:Label>
                </h2></a></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
  
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="add_locations.aspx.cs" Inherits="add_locations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 76px;
        }
        .style2
        {
            height: 56px;
        }
        .style3
        {
            height: 64px;
        }
        .style4
        {
            height: 36px;
        }
        .style5
        {
            height: 41px;
        }
        .style7
        {
            height: 31px;
        }
        .style8
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
            <td>
                </td>
            <td>
               
              
                 <h4>Add Location</h4>
               
            
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="UserNamee" runat="server" Text="Add Locations"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="login_uname" runat="server" AutoCompleteType="Disabled" 
                    EnableViewState="False" TextMode="SingleLine" ValidationGroup="b" 
                    Width="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="login_uname" ErrorMessage=" * Please add location" 
                    ForeColor="Red"> 
                           </asp:RequiredFieldValidator>
            </td>
            
            <td rowspan="3" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
               
            </td>
            <td class="style5">
             
                <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
                    ValidationGroup="b" />
             
            </td>
            
        </tr>
        
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
               
               <h4>&nbsp;</h4>
                <h4>&nbsp;</h4>
                <h4>Add NGOs</h4>
            
            </td>
        </tr>
        
        <tr>
            <td class="style8">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Location"></asp:Label>
        
            </td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    ValidationGroup="c">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage=" * Please add location" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Add NGOs"></asp:Label>
        
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="c"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage=" * Please Enter NGO" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
            </td>
            <td class="style3">
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add" 
                    ValidationGroup="c" />
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>

         <tr>
            <td class="style2">
                </td>
            <td class="style2">
               
               <h4>&nbsp;</h4>
                <h4>&nbsp;</h4>
                <h4>Add Help Information</h4>
            
            </td>
        </tr>
        
        <tr>
            <td class="style8">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
        
            </td>
            <td class="style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Cause"></asp:Label>      
            </td>
            <td class="style7">
               
                <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please Enter Coutse " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:Label ID="Label5" runat="server" Text="Donation Amount"></asp:Label>
                        
            </td>
            <td class="style7">
               
                &nbsp;<asp:TextBox ID="TextBox4" runat="server" ValidationGroup="a"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage=" * Please Enter Amount" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>
                        
            </td>
            <td class="style7">
               
                &nbsp;<asp:TextBox ID="TextBox5" runat="server" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage=" * Please Enter Location" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:Label ID="Label7" runat="server" Text="xyz"></asp:Label>
                        
                </td>
            <td class="style7">
               
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
            </td>
            <td class="style3">
                <br />
                <asp:Button ID="Button3" runat="server" Text="Add" onclick="Button3_Click" 
                    ValidationGroup="a" />
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
</asp:Content>


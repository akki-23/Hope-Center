<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="Help_us.aspx.cs" Inherits="Help_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        Height="113px" Width="937px">
        <Columns>
         <asp:TemplateField>
                <ItemTemplate>




<table style="border: thick groove #C0C0C0; width:100%; color: #C0C0C0; font-size: medium; font-variant: normal;" >
 
  <tr>
    <td  style="border: medium solid #C0C0C0">
        <asp:Label ID="Label4" runat="server" Text='<%# Bind("id") %>' Visible="False"></asp:Label>
        <asp:Image ID="Image1" runat="server"  Height="150" Width="170" ImageUrl='<%# Bind("img", "~/pic/{0}") %>' />
        
        
        
        </td>
    <td    style="border: medium solid #C0C0C0">
 
    <div> 
       <asp:Label ID="Label5" runat="server" Text="Rs. " ForeColor="#FFCC00" Font-Size="20px"></asp:Label> <asp:Label ID="Label1" runat="server" Text='<%# Bind("Donation_amount") %>' ForeColor="#FFCC00" Font-Size="20px"></asp:Label></div>
    <div>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("Location") %>'></asp:Label></div>
    </td>
     &nbsp;&nbsp; &nbsp;&nbsp; 
     <td><asp:Label ID="Label2" runat="server" Text='<%# Bind("Cause") %>'></asp:Label></td>
<td> <asp:Button ID="Button1" runat="server" Text="Donate"  OnClick="myclick" BackColor="#FFCC00"  Font-Size="20px" Width="80px" Font-Bold="True" /></td>
  </tr>
 

</table>



                

                <%--<table style="width:100%">
 
  <tr>
    <td rowspan="2">
        <asp:Label ID="Label4" runat="server" Text='<%# Bind("id") %>' Visible="False"></asp:Label>
        <asp:Image ID="Image1" runat="server"  Height="100" Width="140" ImageUrl='<%# Bind("img", "~/pic/{0}") %>' />
        
        
        
        </td>
    <td   rowspan="1"> Rs. <asp:Label ID="Label1" runat="server" Text='<%# Bind("Donation_amount") %>'></asp:Label></td>
     <td> <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cause") %>'></asp:Label></td>
<td> <asp:Button ID="Button1" runat="server" Text="Donate" CssClass="button1" OnClick="myclick" /></td>
  </tr>
  <tr>
    <td><asp:Label ID="Label3" runat="server" Text='<%# Bind("Location") %>'></asp:Label></td>
   
  </tr>

</table>--%>



                

                
             
                </ItemTemplate>
                
                </asp:TemplateField>
                    
                
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [help]">
    </asp:SqlDataSource>
</asp:Content>


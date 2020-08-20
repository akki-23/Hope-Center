<%@ Page Title="" Language="C#" MasterPageFile="~/other_Pages.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type="text/javascript">
    //    function TextBoxDCardNumber(sender, args) {
    //        var v = document.getElementById("<%=cardnum.ClientID%>").value;
    //        if (v < '16') {
    //            args.IsValid = false;  
    //        }

    //    }
    function dropMonth(sender, args) {
        var v = document.getElementById('<%=DropDownList2.ClientID%>').value;
        if (v == 'Month') {
            args.IsValid = false;
        }

    }
    function dropYear(sender, args) {
        var v = document.getElementById('<%=DropDownList3.ClientID%>').value;
        if (v == 'Year') {
            args.IsValid = false;
        }

    }
    function dropCard(sender, args) {
        var v = document.getElementById('<%=DropDownList1.ClientID%>').value;
        if (v == 'Select') {
            args.IsValid = false;
        }

    }
    function CheckMonths(source, arguments) {
        if ((arguments.Value.length == '16'))
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
 

</script>

    <table width="680px">
<tr>
<td style="border-bottom:1px solid #716f6f; font-family:Arial; font-size:large; font-weight:bold; color:White" 
        colspan="3" >
Payment
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:small" colspan="3">Please enter your payment information on this page. When you have provided payment details, and are ready to complete your booking, click the 'Pay' button. 
</td>
</tr>
<tr>
<td style="height:12px; border-bottom:1px solid #716f6f" colspan="3">
</td>
</tr>
<tr>
<td style="font-family:Arial; font-size:small; font-weight:bold; color:White" 
        colspan="3">
Payments&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</td>
</tr>
<tr>
<td style="height:8px" colspan="3">
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:small;">Total Package Price:
</td>

<td>
    <asp:Label ID="Label1" runat="server" Text="Rs." ForeColor="#FFFFCC" 
        Font-Size="Medium"></asp:Label>
    
&nbsp;&nbsp;&nbsp;&nbsp;
    
</td>
<td>
    <asp:Label ID="packageprice" runat="server" Text="Label" Font-Size="Medium" 
        ForeColor="#FFFFCC"></asp:Label><span style="font-size:medium; color:#FFFFCC">.00</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>







</tr>
<tr>
<td colspan="3" style="border-bottom:1px solid #716f6f">
</td>
</tr>
</table>
<table cellpadding="9" width="680px">
<tr>
<td style="color:#FFC0B5; font-size:medium; font-weight:bold; height: 26px;">MasterCard/ Visa
</td>
</tr>
</table>
<div style="border:1px outset #ffc0b5; height:320px; width:667px; padding:9px">
<table width=100%>
<tr>
<td style="font-weight:bold; color:#c0c0c0">Your card may be eligible or enrolled in Verified by Visa&#8482; or MasterCard® SecureCode&#8482; payer authentication programs. After clicking the 'Pay' button, your Card Issuer may prompt you for your payer authentication password to complete your purchase. 
</td>
</tr>
<tr>
<td style="height:8px">
</td>
</tr>

</table>
<div style="float:right; width:168px; height:200px; margin:0; padding:0">
<div style="float:right; width:168px; height:65px; margin:0; padding:35px 0 0 0; text-align:center">
    <asp:Image ID="Image1" runat="server" ImageAlign="Left"
        ImageUrl="~/images/vbv_visa.png" />
</div>
<div style="float:right; width:168px; height:90px; margin:0; padding:5px 0 0 0; text-align:center">
    <asp:Image ID="Image2" runat="server" ImageAlign="Left" 
        ImageUrl="~/images/mastercard.png" />
</div>
</div> 
<table style="width:490px">
<tr>
<td style="color:#c0c0c0; font-size:medium">Card type
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownlist" 
        Width="200px" ValidationGroup="a">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Master Card(Credit Card)</asp:ListItem>
        <asp:ListItem>Visa(Debit Card or Credit Card) </asp:ListItem>
    </asp:DropDownList>
    <asp:CustomValidator ID="CustomValidator4" runat="server" 
        ControlToValidate="DropDownList1" ErrorMessage="CustomValidator" 
        ForeColor="#CC0000" ClientValidationFunction="dropCard" 
        ValidationGroup="a">Select Card</asp:CustomValidator>
</td>
</tr>
<tr>
<td colspan="2" style="height:8px">
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:medium">Card Number
</td>
<td>
    <asp:TextBox ID="cardnum" runat="server" CssClass="textbox2" Width="200px" 
        ValidationGroup="a"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ErrorMessage="CustomValidator" ForeColor="#CC0000" 
        ClientValidationFunction="CheckMonths" ControlToValidate="cardnum" 
        Display="Dynamic" ValidationGroup="a">Invalid Number ,It should be of 16 digits</asp:CustomValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="cardnum" ErrorMessage="RequiredFieldValidator" 
        ForeColor="#CC0000" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
        runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="cardnum" 
        Display="Dynamic" ValidationGroup="a"></asp:RegularExpressionValidator>


</td>
</tr>
<tr>
<td colspan="2" style="height:8px">
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:medium">Card Holder Name
</td>
<td>
    <asp:TextBox ID="holdername" runat="server" CssClass="textbox2" Width="200px" 
        ValidationGroup="a"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="holdername" ErrorMessage="RequiredFieldValidator" 
        ForeColor="#CC0000" ValidationGroup="a">Field Reqiureds</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ForeColor="Red" ErrorMessage=" * enter in char form" 
               ValidationExpression="^[a-z A-Z]*$" ControlToValidate="holdername" 
        Display="Dynamic" ValidationGroup="a"></asp:RegularExpressionValidator>
        
</td>
</tr>
<tr>
<td colspan="2" style="height:8px">
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:medium">Expiration Date</td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdownlist" 
        Width="90px" ValidationGroup="a">
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     
    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdownlist" 
        Width="90px" ValidationGroup="a">
        <asp:ListItem>Year</asp:ListItem>
    </asp:DropDownList>
    
    <asp:CustomValidator ID="CustomValidator2" runat="server" 
        ControlToValidate="DropDownList2" Display="Dynamic" 
        ErrorMessage="CustomValidator" ForeColor="#CC0000" 
        ClientValidationFunction="dropMonth" ValidationGroup="a">Select Month</asp:CustomValidator>&nbsp;
    <asp:CustomValidator ID="CustomValidator3" runat="server" 
        ControlToValidate="DropDownList3" ErrorMessage="CustomValidator" 
        ForeColor="#CC0000" ClientValidationFunction="dropYear" Display="Dynamic" 
        ValidationGroup="a">Select Year</asp:CustomValidator>
    
</td>
</tr>
<tr>
<td colspan="2" style="height:8px">
</td>
</tr>
<tr>
<td style="color:#c0c0c0; font-size:medium">CVV Number</td>
<td>
 <asp:TextBox ID="cvnum" runat="server" CssClass="textbox2" Width="200px" 
        MaxLength="3" ValidationGroup="a"></asp:TextBox>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="cvnum" ErrorMessage="RequiredFieldValidator" 
        ForeColor="#CC0000" ValidationGroup="a">Field Required</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ForeColor="Red" ErrorMessage=" * enter in numeric form" 
               ValidationExpression="^[0-9]*$" ControlToValidate="cvnum" 
        Display="Dynamic" ValidationGroup="a"></asp:RegularExpressionValidator>

</td>
</tr>
<tr>
<td colspan="2" style="height:8px">
</td>
</tr>
</table>
<table width="680px">
<tr>
<td colspan="2" style="font-weight:bold; color:#c0c0c0">Note: Debit cards of select banks are accepted for online transactions. Please contact your bank to know if your debit card can be used for online transactions. 
</td>
</tr>
<tr>
<td>
</td>
</tr>
</table>
</div>
<div class="clear"></div>
<div style="height:30px; width:680px; margin:auto; padding:5px; float:left; text-align:right">
<br />
    <asp:Button ID="Button1" runat="server" Text="Pay" 
        Height="24px" Width="81px" BackColor="#666666" Font-Bold="True" 
        Font-Size="Medium" ForeColor="White" onclick="Button1_Click" 
        ValidationGroup="a" />

</div>

</asp:Content>


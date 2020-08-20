<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="admin_payments.aspx.cs" Inherits="admin_payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h4><u>Payment made by Donners</u></h4>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" 
            Height="18px" Width="940px" DataKeyNames="Payment_Id">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Payment_Id" HeaderText="Payment_Id" 
                    SortExpression="Payment_Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="Donation_Amount" HeaderText="Donation_Amount" 
                    SortExpression="Donation_Amount" />
                <asp:BoundField DataField="Cause" HeaderText="Cause" 
                    SortExpression="Cause" />
                <asp:BoundField DataField="Location" HeaderText="Location" 
                    SortExpression="Location" />
                <asp:BoundField DataField="NGO" HeaderText="NGO" 
                    SortExpression="NGO" />
                <asp:BoundField DataField="Tax_Benefit" HeaderText="Tax_Benefit" 
                    SortExpression="Tax_Benefit" />
                <asp:BoundField DataField="Card_Type" HeaderText="Card_Type" 
                    SortExpression="Card_Type" />
                <asp:BoundField DataField="Card_Number" HeaderText="Card_Number" 
                    SortExpression="Card_Number" />
                <asp:BoundField DataField="Card_Holder_Name" HeaderText="Card_Holder_Name" 
                    SortExpression="Card_Holder_Name" />
                <asp:BoundField DataField="Expiration_Date" HeaderText="Expiration_Date" 
                    SortExpression="Expiration_Date" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [payment] WHERE [Payment_Id] = @original_Payment_Id AND [Username] = @original_Username AND [Donation_Amount] = @original_Donation_Amount AND (([Cause] = @original_Cause) OR ([Cause] IS NULL AND @original_Cause IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([NGO] = @original_NGO) OR ([NGO] IS NULL AND @original_NGO IS NULL)) AND (([Tax_Benefit] = @original_Tax_Benefit) OR ([Tax_Benefit] IS NULL AND @original_Tax_Benefit IS NULL)) AND [Card_Type] = @original_Card_Type AND [Card_Number] = @original_Card_Number AND [Card_Holder_Name] = @original_Card_Holder_Name AND [Expiration_Date] = @original_Expiration_Date" 
            InsertCommand="INSERT INTO [payment] ([Username], [Donation_Amount], [Cause], [Location], [NGO], [Tax_Benefit], [Card_Type], [Card_Number], [Card_Holder_Name], [Expiration_Date]) VALUES (@Username, @Donation_Amount, @Cause, @Location, @NGO, @Tax_Benefit, @Card_Type, @Card_Number, @Card_Holder_Name, @Expiration_Date)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [payment]" 
            UpdateCommand="UPDATE [payment] SET [Username] = @Username, [Donation_Amount] = @Donation_Amount, [Cause] = @Cause, [Location] = @Location, [NGO] = @NGO, [Tax_Benefit] = @Tax_Benefit, [Card_Type] = @Card_Type, [Card_Number] = @Card_Number, [Card_Holder_Name] = @Card_Holder_Name, [Expiration_Date] = @Expiration_Date WHERE [Payment_Id] = @original_Payment_Id AND [Username] = @original_Username AND [Donation_Amount] = @original_Donation_Amount AND (([Cause] = @original_Cause) OR ([Cause] IS NULL AND @original_Cause IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([NGO] = @original_NGO) OR ([NGO] IS NULL AND @original_NGO IS NULL)) AND (([Tax_Benefit] = @original_Tax_Benefit) OR ([Tax_Benefit] IS NULL AND @original_Tax_Benefit IS NULL)) AND [Card_Type] = @original_Card_Type AND [Card_Number] = @original_Card_Number AND [Card_Holder_Name] = @original_Card_Holder_Name AND [Expiration_Date] = @original_Expiration_Date">
            <DeleteParameters>
                <asp:Parameter Name="original_Payment_Id" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Donation_Amount" Type="String" />
                <asp:Parameter Name="original_Cause" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_NGO" Type="String" />
                <asp:Parameter Name="original_Tax_Benefit" Type="String" />
                <asp:Parameter Name="original_Card_Type" Type="String" />
                <asp:Parameter Name="original_Card_Number" Type="String" />
                <asp:Parameter Name="original_Card_Holder_Name" Type="String" />
                <asp:Parameter Name="original_Expiration_Date" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Donation_Amount" Type="String" />
                <asp:Parameter Name="Cause" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="NGO" Type="String" />
                <asp:Parameter Name="Tax_Benefit" Type="String" />
                <asp:Parameter Name="Card_Type" Type="String" />
                <asp:Parameter Name="Card_Number" Type="String" />
                <asp:Parameter Name="Card_Holder_Name" Type="String" />
                <asp:Parameter Name="Expiration_Date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Donation_Amount" Type="String" />
                <asp:Parameter Name="Cause" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="NGO" Type="String" />
                <asp:Parameter Name="Tax_Benefit" Type="String" />
                <asp:Parameter Name="Card_Type" Type="String" />
                <asp:Parameter Name="Card_Number" Type="String" />
                <asp:Parameter Name="Card_Holder_Name" Type="String" />
                <asp:Parameter Name="Expiration_Date" Type="String" />
                <asp:Parameter Name="original_Payment_Id" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Donation_Amount" Type="String" />
                <asp:Parameter Name="original_Cause" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_NGO" Type="String" />
                <asp:Parameter Name="original_Tax_Benefit" Type="String" />
                <asp:Parameter Name="original_Card_Type" Type="String" />
                <asp:Parameter Name="original_Card_Number" Type="String" />
                <asp:Parameter Name="original_Card_Holder_Name" Type="String" />
                <asp:Parameter Name="original_Expiration_Date" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [Username], [Donation_Amount], [Cause], [Location], [NGO], [Card_Type], [Card_Number], [Card_Holder_Name], [Expiration_Date] FROM [payment]">
        </asp:SqlDataSource>
    </p>

</asp:Content>


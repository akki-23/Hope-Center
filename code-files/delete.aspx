<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>Delete Location</h4>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" 
        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        DataKeyNames="city" ForeColor="Black" Width="580px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="city" HeaderText="city" ReadOnly="True" 
                SortExpression="city" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [location] WHERE [city] = @original_city AND [id] = @original_id" 
        InsertCommand="INSERT INTO [location] ([city]) VALUES (@city)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [location]" 
        UpdateCommand="UPDATE [location] SET [id] = @id WHERE [city] = @original_city AND [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="city" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

   <h4>Delete NGO Details</h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataKeyNames="n_id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" Width="582px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="n_id" HeaderText="n_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="n_id" />
            <asp:BoundField DataField="ngo" HeaderText="ngo" SortExpression="ngo" />
            <asp:BoundField DataField="city_id" HeaderText="city_id" 
                SortExpression="city_id" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [all_ngo] WHERE [n_id] = @original_n_id AND (([ngo] = @original_ngo) OR ([ngo] IS NULL AND @original_ngo IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL))" 
        InsertCommand="INSERT INTO [all_ngo] ([ngo], [city_id]) VALUES (@ngo, @city_id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [all_ngo]" 
        UpdateCommand="UPDATE [all_ngo] SET [ngo] = @ngo, [city_id] = @city_id WHERE [n_id] = @original_n_id AND (([ngo] = @original_ngo) OR ([ngo] IS NULL AND @original_ngo IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_n_id" Type="Int32" />
            <asp:Parameter Name="original_ngo" Type="String" />
            <asp:Parameter Name="original_city_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ngo" Type="String" />
            <asp:Parameter Name="city_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ngo" Type="String" />
            <asp:Parameter Name="city_id" Type="Int32" />
            <asp:Parameter Name="original_n_id" Type="Int32" />
            <asp:Parameter Name="original_ngo" Type="String" />
            <asp:Parameter Name="original_city_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h4>Delete Help Causes</h4>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
    CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource3" 
    ForeColor="Black" Width="584px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
            <asp:BoundField DataField="Cause" HeaderText="Cause" SortExpression="Cause" />
            <asp:BoundField DataField="Donation_amount" HeaderText="Donation_amount" 
                SortExpression="Donation_amount" />
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [help] WHERE [id] = @original_id AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL)) AND (([Cause] = @original_Cause) OR ([Cause] IS NULL AND @original_Cause IS NULL)) AND (([Donation_amount] = @original_Donation_amount) OR ([Donation_amount] IS NULL AND @original_Donation_amount IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL))" 
    InsertCommand="INSERT INTO [help] ([img], [Cause], [Donation_amount], [Location]) VALUES (@img, @Cause, @Donation_amount, @Location)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [help]" 
    UpdateCommand="UPDATE [help] SET [img] = @img, [Cause] = @Cause, [Donation_amount] = @Donation_amount, [Location] = @Location WHERE [id] = @original_id AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL)) AND (([Cause] = @original_Cause) OR ([Cause] IS NULL AND @original_Cause IS NULL)) AND (([Donation_amount] = @original_Donation_amount) OR ([Donation_amount] IS NULL AND @original_Donation_amount IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_img" Type="String" />
        <asp:Parameter Name="original_Cause" Type="String" />
        <asp:Parameter Name="original_Donation_amount" Type="String" />
        <asp:Parameter Name="original_Location" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="img" Type="String" />
        <asp:Parameter Name="Cause" Type="String" />
        <asp:Parameter Name="Donation_amount" Type="String" />
        <asp:Parameter Name="Location" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="img" Type="String" />
        <asp:Parameter Name="Cause" Type="String" />
        <asp:Parameter Name="Donation_amount" Type="String" />
        <asp:Parameter Name="Location" Type="String" />
        <asp:Parameter Name="original_id" Type="Int32" />
        <asp:Parameter Name="original_img" Type="String" />
        <asp:Parameter Name="original_Cause" Type="String" />
        <asp:Parameter Name="original_Donation_amount" Type="String" />
        <asp:Parameter Name="original_Location" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>


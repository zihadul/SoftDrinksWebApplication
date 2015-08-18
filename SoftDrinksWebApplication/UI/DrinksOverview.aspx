<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPageForCMD.Master" AutoEventWireup="true" CodeBehind="DrinksOverview.aspx.cs" Inherits="SoftDrinksWebApplication.UI.DrinksOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><u>
        Avilable Drinks:</u></h3>
    <h3><u>
        <asp:Button ID="addNewButton" runat="server" Font-Bold="True" ForeColor="Maroon" OnClick="addNewButton_Click" Text="Add New Drinks" />
        </u></h3>
    <h3><u>
        <asp:GridView ID="drinksGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="Maroon" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="DrinksTBL" Font-Size="Medium" PageSize="5" Width="998px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Flavors" HeaderText="Flavors" SortExpression="Flavors" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OriginCountry" HeaderText="OriginCountry" SortExpression="OriginCountry" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="DrinksTBL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDb %>" DeleteCommand="DELETE FROM [DrinksTBL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DrinksTBL] ([Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (@Name, @Type, @Flavors, @Price, @OriginCountry, @Quantity, @Review, @Image)" SelectCommand="SELECT * FROM [DrinksTBL]" UpdateCommand="UPDATE [DrinksTBL] SET [Name] = @Name, [Type] = @Type, [Flavors] = @Flavors, [Price] = @Price, [OriginCountry] = @OriginCountry, [Quantity] = @Quantity, [Review] = @Review, [Image] = @Image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Flavors" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="OriginCountry" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Flavors" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="OriginCountry" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Review" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </u></h3>
<p>&nbsp;</p>
   
    
</asp:Content>

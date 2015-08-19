<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SoftDrinksWebApplication.UI.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="UserTBL" ForeColor="#333333" GridLines="None" Width="750px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="UserTBL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDb %>" DeleteCommand="DELETE FROM [UserTBL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserTBL] ([Name], [Email], [Password], [Address], [UserType]) VALUES (@Name, @Email, @Password, @Address, @UserType)" SelectCommand="SELECT * FROM [UserTBL]" UpdateCommand="UPDATE [UserTBL] SET [Name] = @Name, [Email] = @Email, [Password] = @Password, [Address] = @Address, [UserType] = @UserType WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

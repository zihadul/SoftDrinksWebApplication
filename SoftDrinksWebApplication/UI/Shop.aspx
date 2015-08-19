<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="SoftDrinksWebApplication.UI.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="resultLabel" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Button ID="okButton" runat="server" Font-Bold="True" Text="Ok" Visible="False" Width="59px" OnClick="okButton_Click" />
    <asp:Button ID="cancelButton" runat="server" Font-Bold="True" Text="Cancel" Visible="False" OnClick="cancelButton_Click" />
    <br />
    <br />
    <asp:Button ID="orderButton" runat="server" Font-Bold="True" OnClick="orderButton_Click" Text="Order !" />
&nbsp;&nbsp;
    <asp:Label ID="errorLabel" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="productPanel" runat="server">
    </asp:Panel>
    <br />
</asp:Content>

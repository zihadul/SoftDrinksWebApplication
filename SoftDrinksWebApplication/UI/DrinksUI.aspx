<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="DrinksUI.aspx.cs" Inherits="SoftDrinksWebApplication.UI.DrinksUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Select a Type <asp:DropDownList ID="drinksTypeDropDownList"  runat="server" Height="23px" Width="122px" AutoPostBack="True" OnSelectedIndexChanged="drinksTypeDropDownList_SelectedIndexChanged" DataSourceID="DrinksTBL" DataTextField="Type" DataValueField="Type">
           
    </asp:DropDownList>
        <asp:SqlDataSource ID="DrinksTBL" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDb %>" SelectCommand="SELECT DISTINCT [Type] FROM [DrinksTBL]"></asp:SqlDataSource>
</p>
    <p>
    <asp:Label ID="outputLabel" runat="server"></asp:Label>
        </p>
</asp:Content>

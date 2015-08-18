<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="SoftDrinksWebApplication.UI.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="15">
        <tr>
            <td>

                <b>User Name:</b></td>
            <td>

                <asp:TextBox ID="userNameTextBox" runat="server" Width="238px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>

            </td>
        </tr>
         <tr>
            <td>

                <b>Passward:</b></td>
            <td>

                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Width="238px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>

            </td>
        </tr>
         <tr>
             <td></td>
            <td>

              <asp:Button ID="logInButton" runat="server" Font-Bold="True" Height="35px" Text="Log In" Width="87px" OnClick="logInButton_Click" />

            &nbsp;

                <asp:Button ID="createButton" runat="server" CausesValidation="False" Height="32px" OnClick="createButton_Click" style="font-weight: 700" Text="Create New Account" Width="140px" />

            </td>
        </tr>
    </table>
    <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

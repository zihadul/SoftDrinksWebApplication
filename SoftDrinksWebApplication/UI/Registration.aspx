<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SoftDrinksWebApplication.UI.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3><u>
        Create an Account:</u></h3>
     <table cellspacing="15" class="drinkTable">
         <tr>
             <td style="width: 163px">

                 <b>User Name:</b></td>
             <td>

                 <asp:TextBox ID="userNameTextBox" runat="server" Width="200px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
             <td style="width: 163px">

                 <b>Email:</b></td>
             <td>

                 <asp:TextBox ID="emailTextBox" runat="server" Width="200px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
             <td style="width: 163px">

                 <b>Passwors:</b></td>
             <td>

                 <asp:TextBox ID="passwordTextBox" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
          <tr>
             <td style="width: 163px">

                 <b>Confirm Passwors:</b></td>
             <td>

                 <asp:TextBox ID="conPasswordTextBox" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox" ControlToValidate="conPasswordTextBox" ErrorMessage="Type same Password" ForeColor="Red"></asp:CompareValidator>
             </td>
         </tr>
          <tr>
             <td style="width: 163px">

                 <b>Address:</b></td>
             <td>

                 <asp:TextBox ID="addressTextBox" runat="server" Width="268px" Height="41px" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addressTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         </table>
    <br />
    <asp:Button ID="createButton" runat="server" Text="Create Account" Font-Bold="True" OnClick="createButton_Click" />
<br />
<br />
<asp:Label ID="messageLabel" runat="server"></asp:Label>
</asp:Content>

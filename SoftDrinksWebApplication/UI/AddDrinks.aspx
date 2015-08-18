<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPageForCMD.Master" AutoEventWireup="true" CodeBehind="AddDrinks.aspx.cs" Inherits="SoftDrinksWebApplication.UI.AddDrinks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><u>
        Add a new Drinks:</u></h3>
     <table cellspacing="15" class="drinkTable">
         <tr>
             <td style="width: 80px">

                 <b>Name:</b></td>
             <td>

                 <asp:TextBox ID="nameTextBox" runat="server" Width="200px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Type:</b></td>
             <td>

                 <asp:TextBox ID="typeTextBox" runat="server" Width="200px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="typeTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Flavor:</b></td>
             <td>

                 <asp:TextBox ID="flavorTextBox" runat="server" Width="200px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="flavorTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Price:</b></td>
             <td>

                 <asp:TextBox ID="priceTextBox" runat="server" Width="200px"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="priceTextBox" ErrorMessage="*" Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;tk</strong></td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <strong>Country</strong><b>:</b></td>
             <td>

                 <asp:TextBox ID="countryTextBox" runat="server" Width="200px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="countryTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Net Weight:</b></td>
             <td>

                 <asp:TextBox ID="weightTextBox" runat="server" Width="200px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="weightTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Image:</b></td>
             <td>

                 

                 &nbsp;<asp:DropDownList ID="imageDropDownList" runat="server" Width="200px">
                 </asp:DropDownList>
&nbsp;

                 

                 <asp:FileUpload ID="imageFileUpload" runat="server" />
&nbsp;&nbsp;
                 <asp:Button ID="uploadButton" runat="server" Font-Bold="True" OnClick="uploadButton_Click" Text="Upload" CausesValidation="False" Height="30px" />
&nbsp;<br />
                 <asp:Label ID="resultLabel" runat="server"></asp:Label>

                 

             </td>
         </tr>
          <tr>
             <td style="width: 80px">

                 <b>Review:</b></td>
             <td>

                 <asp:TextBox ID="reviewTextBox" runat="server" Height="90px" TextMode="MultiLine" Width="431px"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="reviewTextBox" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

             </td>
         </tr>
         
     </table>
    <br />
    <asp:Button ID="saveButton" runat="server" Text="Save" Height="31px" OnClick="saveButton_Click" style="font-weight: 700" Width="88px" />
    &nbsp;
    <asp:Label ID="outPutLabel" runat="server" Text=""></asp:Label>
</asp:Content>

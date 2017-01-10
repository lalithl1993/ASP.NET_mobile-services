<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/employee.Master" CodeBehind="empaccount.aspx.vb" Inherits="mine.account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style3
    {
        width: 72%;
        height: 503px;
    }
    .style4
    {
        width: 149px;
    }
    .style5
    {
        width: 149px;
        height: 42px;
    }
    .style6
    {
        height: 42px;
            width: 242px;
        }
    .style7
    {
        width: 149px;
        height: 69px;
    }
    .style8
    {
        height: 69px;
            width: 242px;
        }
        .style9
        {
            width: 242px;
        }
        .style10
        {
            width: 149px;
            height: 76px;
        }
        .style11
        {
            width: 242px;
            height: 76px;
        }
        .style12
        {
            width: 126px;
        }
        .style13
        {
            height: 42px;
            width: 126px;
        }
        .style14
        {
            height: 69px;
            width: 126px;
        }
        .style15
        {
            width: 126px;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Employee Account|</h1>
       <hr />
<br />
<br />
<br />
    <table class="style3" align="center">
        <tr>
            <td class="style4">
                Employee ID</td>
            <td class="style12">
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td class="style12">
                <asp:TextBox ID="txtname" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Date of birth</td>
            <td class="style12">
                <asp:TextBox ID="txtdob" runat="server" Enabled="False"></asp:TextBox>
                            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Sex</td>
            <td class="style12">
                    <asp:TextBox ID="txtsex" runat="server" Enabled="False"></asp:TextBox>
                </td>
            <td class="style9">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Email id</td>
            <td class="style13">
                <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtemail0" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail0" ErrorMessage="* Invalid Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail0" ErrorMessage="* Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td class="style14">
                <asp:TextBox ID="txtaddress" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="227px" Enabled="False"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtaddress0" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="227px" Visible="False"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtaddress0" ErrorMessage="* Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Phone</td>
            <td class="style15">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" Enabled="False"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtphone0" runat="server" MaxLength="10" Visible="False"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtphone0" ErrorMessage="* Enter Phone number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtphone0" ErrorMessage="* Invalid phone" ForeColor="Red" 
                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Working Branch</td>
            <td class="style12">
                <asp:TextBox ID="txtbranch" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="btnedit" runat="server" Text="Edit" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" Visible="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncanael" runat="server" Text="cancel" Visible="False" 
                    CausesValidation="False" />
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

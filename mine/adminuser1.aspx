<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminuser1.aspx.vb" Inherits="mine.user1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 15%;
            height: 131px;
        }
        .style2
        {
            width: 88px;
        }
        #btncancel
        {
            height: 26px;
        }
        .style3
    {
        width: 42%;
        height: 333px;
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
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage User Accounts|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|User Detales|</h3>
    <hr />


<br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hluserlist" runat="server" 
                    NavigateUrl="~/adminuser.aspx">User List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/adminuser1.aspx" ForeColor="White">Detailes</asp:HyperLink>
            </td>
        </tr>
    </table>
<table style="float: center" align="center"  class="style3">
        <tr>
            <td class="style4">
                User ID</td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="22px" Text="GO" 
                    Width="55px" />
                <asp:TextBox ID="txtid1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="* Enter Integer" ForeColor="Red" 
                    ValidationExpression="[0-9]{1,10}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="* Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Date of birth</td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" Enabled="False"></asp:TextBox>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Sex</td>
            <td>
                    <asp:TextBox ID="txtsex" runat="server" Enabled="False"></asp:TextBox>
                </td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Email id</td>
            <td class="style6">
                <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnblock" runat="server" Text="block" Visible="False" />
                <asp:Button ID="btunblock" runat="server" Text="unblock" Visible="False" />
            </td>
            <td>
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
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminpage2.aspx.vb" Inherits="mine.page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        .style1
        {
            width: 15%;
            height: 256px;
        }
        .style2
        {
            width: 88px;
        }
    .style3
    {
        width: 69%;
        height: 364px;
    }
    .style4
    {
        width: 149px;
    }
    .style7
    {
        width: 149px;
        height: 185px;
    }
    .style8
    {
        height: 185px;
    }
    .style9
    {
        width: 298px;
    }
    .style10
    {
        height: 185px;
        width: 298px;
    }
    .style11
    {
        width: 149px;
        height: 51px;
    }
    .style12
    {
        width: 298px;
        height: 51px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Page Detailes|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Add Mobile Models|</h3>
    <hr />
    
<br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hladdstore" runat="server" 
                    NavigateUrl="~/adminpage.aspx">Add Store</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/adminpage1.aspx">Store list</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/adminpage2.aspx" 
                    ForeColor="White">Add Model</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/adminpage3.aspx">Model List</asp:HyperLink>
            </td>
        </tr>
    </table>
<table style="float: center" class="style3" align="center">
        <tr>
            <td class="style4">
                Model ID</td>
            <td class="style9">
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Model
                Name</td>
            <td class="style12">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="* Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Specifications</td>
            <td class="style10">
                <asp:TextBox ID="txtspec" runat="server" Height="176px" TextMode="MultiLine" 
                    Width="291px"></asp:TextBox>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnadd" runat="server" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="adminpage2.aspx">Cancel</asp:HyperLink>
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
</asp:Content>

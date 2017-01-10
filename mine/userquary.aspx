<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user.Master" CodeBehind="userquary.aspx.vb" Inherits="mine.quary" %>
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
        width: 72%;
        height: 343px;
    }
    .style4
    {
        width: 490px;
    }
    .style5
    {
        height: 186px;
    }
    .style6
    {
        width: 464px;
    }
    .style7
    {
        width: 464px;
        height: 91px;
    }
    .style8
    {
        width: 490px;
        height: 91px;
    }
    .style9
    {
        width: 272px;
        height: 91px;
    }
    .style10
    {
        width: 272px;
    }
    .style11
    {
        height: 186px;
        width: 490px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Welcome |</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Add Quary|</h3>
    <hr />
    <br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hladdstore" runat="server" 
                    NavigateUrl="~/userhome.aspx">Home</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/userproducts.aspx">Products</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/userquary.aspx" 
                    ForeColor="White">Quaries</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/useraccount.aspx">Account</asp:HyperLink>
            </td>
        </tr>
    </table>
    <table style="float: center" class="style3" align="center">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                Refrence ID     <asp:TextBox ID="txtreff" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    
                    style="height: 27px; width: 118px" 
                    NavigateUrl="~/userqueryans.aspx">Previous Queries</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                Question :<br />
                <asp:TextBox ID="txtquest" runat="server" Height="159px" TextMode="MultiLine" 
                    Width="497px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtquest" ErrorMessage="* Enter Question" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
            </td>
            <td class="style4">
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

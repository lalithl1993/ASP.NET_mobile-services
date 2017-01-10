<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user.Master" CodeBehind="userproducts.aspx.vb" Inherits="mine.products" %>
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
        width: 62%;
        height: 364px;
    }
    .style4
    {
        width: 17px;
    }
    .style5
    {
        height: 53px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Welcome |</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Product info|</h3>
    <hr style="margin-bottom: 7px" />
    <br />
  
  

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
                    NavigateUrl="~/userproducts.aspx" ForeColor="White">Products</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/userquary.aspx">Quaries</asp:HyperLink>
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
            <td class="style4" rowspan="2">
                <asp:ListBox ID="listid" runat="server" Height="307px" 
                    style="margin-right: 4px; margin-top: 5px;" Width="192px" 
                    DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id" 
                    AutoPostBack="True"></asp:ListBox>
            </td>
            <td class="style5">
                Model :<br />
                <asp:TextBox ID="txtname" runat="server" Height="30px" 
                    Width="153px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Specifications :
                <br />
                <asp:TextBox ID="txtspec" runat="server" Height="244px" TextMode="MultiLine" 
                    Width="403px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id] FROM [model]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

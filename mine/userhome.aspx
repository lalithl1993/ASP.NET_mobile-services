<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user.Master" CodeBehind="userhome.aspx.vb" Inherits="mine.home1" %>
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
        width: 704px;
    }
    .style4
    {
        width: 67px;
    }
    .style5
    {
        width: 973px;
        height: 352px;
    }
    .style6
    {
        width: 276px;
        height: 160px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Welcome |</h1>
    <hr />
<br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hladdstore" runat="server" 
                    NavigateUrl="~/userhome.aspx" ForeColor="White">Home</asp:HyperLink>
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
    <table style="float: center; height: 232px;" class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <img alt="Banner" class="style5" src="images/hp-gives-back-htc1-black.gif" /></td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
    <h3>
        Account Information</h3>
    <p>
        From how to manage your account online to what to do if your phone is stolen, 
        we&#39;ve got the answers you need.</p>
    <p>
        <a href="useraccount.aspx">
        See Account Support</a></p>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <div class="quadrant">
                    <h3>
                        Phones &amp; Services</h3>
                    <p>
                        Look up your phone, download user guides and learn more about voice, text and 
                        data.
                    </p>
                    <h4>
                        select your phone:</h4>
                    <div>

                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [name] FROM [model]"></asp:SqlDataSource>

                    </div>
                    <p>
                        <a href="userproducts.aspx">
                        See More Phones </a></p>
                </div>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <img alt="aa" align="right"  class="style6" 
                    src="images/add_a_line_banner_276x160.png" /><img 
                    alt="ss" align="left"  class="style6" 
                    src="images/AAL_fv_276x160ad.png" /></td>
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
</asp:Content>

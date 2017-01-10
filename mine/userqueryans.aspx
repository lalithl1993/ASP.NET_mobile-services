<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user.Master" CodeBehind="userqueryans.aspx.vb" Inherits="mine.queryans" %>
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
        width: 66%;
        height: 394px;
    }
    .style4
    {
        width: 17px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Welcome |</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Quary History|</h3>
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
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/userquary.aspx">Queries</asp:HyperLink>
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
                <asp:ListBox ID="listreff" runat="server" Height="274px" 
                    style="margin-right: 4px" Width="192px" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [id] FROM [query] WHERE ([custid] = @custid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtcuruid" Name="custid" 
                            PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                Question: 
                <br />
                <asp:TextBox ID="txtqust" runat="server" Height="113px" TextMode="MultiLine" 
                    Width="400px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Answer :
                <br />
                <asp:TextBox ID="txtans" runat="server" Height="158px" TextMode="MultiLine" 
                    Width="403px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:TextBox ID="txtcuruid" runat="server" Visible="False"></asp:TextBox>
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

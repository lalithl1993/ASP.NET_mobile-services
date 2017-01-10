<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminemployee2.aspx.vb" Inherits="mine.employee2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
       .style1
        {
            width: 15%;
            height: 195px;
        }
        .style2
        {
            width: 88px;
        }
    .style3
    {
        width: 42%;
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
    }
    .style7
    {
        width: 149px;
        height: 69px;
    }
    .style8
    {
        height: 69px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Employee Accounts|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Employee Detailes|</h3>
    <hr />
<br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hlemplist" runat="server" 
                    NavigateUrl="~/adminemployee.aspx">List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/adminemployee1.aspx">Add</asp:HyperLink>
            </td>
        </tr>
         <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/adminemployee2.aspx" ForeColor="White">Detailes</asp:HyperLink>
            </td>
        </tr>
    </table>

    <table style="float: center" class="style3" align="center">
        <tr>
            <td class="style4">
                Employee ID</td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="22px" Text="GO" 
                    Width="55px" />
                <asp:TextBox ID="txtid1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="* Enter intiger" ForeColor="Red" 
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
            <td class="style7">
                Address</td>
            <td class="style8">
                <asp:TextBox ID="txtaddress" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="227px" Enabled="False"></asp:TextBox>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Phone</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Working Branch</td>
            <td>
                <asp:TextBox ID="txtbranch" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnedit" runat="server" Text="Edit" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnremove" runat="server" Text="Remove" Visible="False" 
                    CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncanael" runat="server" Text="cancel" Visible="False" 
                    CausesValidation="False" />
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
</asp:Content>

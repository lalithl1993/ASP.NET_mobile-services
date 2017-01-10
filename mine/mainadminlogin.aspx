<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="mainadminlogin.aspx.vb" Inherits="mine.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">
        .style1
        
        #txtuname
        {
            width: 190px;
        }
        #txtpass
        {
            width: 204px;
        }
        .style2
        {
            width: 241px;
        }
        
        #txtuname
        {
            width: 202px;
        }
        .style3
        {
            width: 73px;
        }
        
        
    </style>
    
    <style type="text/css">
        #Select1
        {
            width: 187px;
        }
            
        </style>

 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
<br />
 <br />
 <br />
 <br />
 <br />
    <table style="width: 59%; height: 96px; " align="center">
        <tr>
            <td class="style3">
                USER ID</td>
            <td class="style2">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Please enter id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                PASSWORD</td>
            <td class="style2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Please enter password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
    <asp:DropDownList ID="ddtype" runat="server">
        <asp:ListItem>admin</asp:ListItem>
        <asp:ListItem>employee</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Button ID="btnlogin" runat="server" Text="Login" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mainsupport.aspx">Cancel</asp:HyperLink>
            </td>
            <td class="style2">
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
    
 </div>
</asp:Content>

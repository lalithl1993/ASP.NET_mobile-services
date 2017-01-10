<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="mainsupport.aspx.vb" Inherits="mine.WebForm1" %>
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
        }
        
       
                
        .style4
        {
            width: 219px;
        }
        
       
                
        .style5
        {
            width: 78px;
        }
        
       
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div style="background-color: #FFFFFF"><img alt="Support"  class="style1"
         src="images/support_banner.png" align="middle" /></div>
 <br />
 <br />
 <br />
 <br />
    <table style="width: 50%; height: 95px; " align="center">
        <tr>
            <td class="style5">
                EMAIL ID</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="*Enter User name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                PASSWORD</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="*Enter Password name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:Button ID="btnlogin" runat="server" Text="Login" Height="25px" 
                    Width="48px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style3" colspan="2">
    <asp:HyperLink 
        ID="HyperLink1" runat="server" 
        
        style="height: 18px" 
        NavigateUrl="~/mainsignup.aspx">Not Member? SIGN UP</asp:HyperLink>
            </td>
            <td class="style3" colspan="2">
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/mainadminlogin.aspx">Advanced Login</asp:HyperLink>
            </td>
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
        
</asp:Content>

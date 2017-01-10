<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/employee.Master" CodeBehind="empchangepass.aspx.vb" Inherits="mine.changepass1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 414px;
            height: 291px;
        }
    .style4
    {
        width: 149px;
    }
        .style7
        {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF">|Manage Employee Account|</h1>
        <h3 align="center" style="color: #FFFFFF">|Change Password|</h3>

    <hr />
    <br />
    <br />
    <br />

    <table class="style3" align="center">
        <tr>
            <td class="style4">
                Current Password</td>
            <td class="style7">
                <asp:TextBox ID="txtcurrpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcurrpass" ErrorMessage="* Fill Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                New Password</td>
            <td class="style7">
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnewpass" ErrorMessage="* Fill password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Confirm Password</td>
            <td class="style7">
                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            <td class="style7">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconpass" 
                        ErrorMessage="* Password mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;<asp:Button ID="btnchange" runat="server" Text="Change" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncanael" runat="server" Text="cancel" 
                    CausesValidation="False" />
            </td>
            <td class="style7">
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

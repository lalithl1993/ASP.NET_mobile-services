<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/employee.Master" CodeBehind="empanswering.aspx.vb" Inherits="mine.answering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 60%;
            height: 463px;
        }
        .style3
        {
            height: 99px;
        }
        .style5
        {
            width: 270px;
            height: 53px;
        }
        .style6
        {
            height: 53px;
        }
        .style7
        {
            height: 65px;
        }
        .style8
        {
            height: 108px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF">    &nbsp;|Customer Questions|</h1>

    <hr />
<br />
<br />
<br />
<br />
<br />
    <table class="style1" align="center">
        <tr>
            <td class="style5">
                Refrence ID<asp:TextBox ID="txtref" runat="server" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style6">
                Customer ID<asp:TextBox ID="txtcust" runat="server" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                Question:<br />
                <asp:TextBox ID="txtquest" runat="server" Height="87px" 
                    TextMode="MultiLine" Width="536px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                Answer :<br />
                <asp:TextBox ID="txtans" runat="server" Height="104px" TextMode="MultiLine" 
                    Width="534px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style7">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" align="right" runat="server" 
                    NavigateUrl="~/empcomplaints.aspx">Cancel</asp:HyperLink>
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
<br />
<br />
<br />
</asp:Content>

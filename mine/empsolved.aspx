<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/employee.Master" CodeBehind="empsolved.aspx.vb" Inherits="mine.solved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
    {
        width: 72%;
        height: 394px;
            margin-left: 0px;
        }
    .style4
    {
        width: 17px;
    }
        .style5
        {
            width: 17px;
            height: 54px;
        }
        .style6
        {
            height: 54px;
            width: 404px;
        }
        .style7
        {
            width: 404px;
        }
        .style8
        {
            width: 17px;
            height: 63px;
        }
        .style9
        {
            width: 404px;
            height: 130px;
        }
        .style10
        {
            width: 17px;
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Solved Questions|</h1>
    <hr />
<br />
<br />
<br />
    <table class="style3" align="center">
        <tr>
            <td class="style5">
                AnsweredDate<br />
                <asp:TextBox 
                    ID="txtadate" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style8">
                QuestionDate<br />
                <asp:TextBox ID="txtqdate" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style9" rowspan="2">
                Question: 
                <br />
                <asp:TextBox ID="txtqust" runat="server" Height="113px" TextMode="MultiLine" 
                    Width="400px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                CustID<br />
                <asp:TextBox ID="txtcust" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:ListBox ID="listreff" runat="server" Height="274px" 
                    style="margin-right: 4px" Width="192px" DataSourceID="SqlDataSource1" 
                    DataTextField="id" DataValueField="id" AutoPostBack="True"></asp:ListBox>
            </td>
            <td class="style7">
                Answer :
                <br />
                <asp:TextBox ID="txtans" runat="server" Height="158px" TextMode="MultiLine" 
                    Width="403px" Enabled="False"></asp:TextBox>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id] FROM [query] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="a" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="mainstorelocator.aspx.vb" Inherits="mine.storelocator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 276px;
        }
        .style2
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="background-color: #FFFFFF"><img alt="Support"  class="style1"
         src="images/storelocator_banner.jpg" align="middle" /></div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [states] ORDER BY [state]"></asp:SqlDataSource>
    <table align="center" class="style2">
        <tr>
            <td>

    <asp:DropDownList ID="ddstate" align="center" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="state" DataValueField="state">
    </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [store] WHERE ([state] = @state)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddstate" DefaultValue="0" Name="state" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

<br />

    <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
        </Columns>
    </asp:GridView>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

</asp:Content>

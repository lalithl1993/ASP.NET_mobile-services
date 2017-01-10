<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/employee.Master" CodeBehind="empcomplaints.aspx.vb" Inherits="mine.complaints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF">    &nbsp;|Customer Questions|</h1>

    <hr />
<br />
<br />
    <asp:GridView ID="GridView1" align="center" runat="server" 
         AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
            <asp:BoundField DataField="qdate" HeaderText="qdate" SortExpression="qdate" />
            <asp:BoundField DataField="custid" HeaderText="custid" 
                SortExpression="custid" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [query] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="n" Name="status" Type="String" />
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
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>

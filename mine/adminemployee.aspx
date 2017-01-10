<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminemployee.aspx.vb" Inherits="mine.employee" %>
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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Employee Accounts|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Employee List|</h3>
    <hr />
    <br />
    <br />
    <br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hlemplist" runat="server" 
                    NavigateUrl="~/adminemployee.aspx" ForeColor="White">List</asp:HyperLink>
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
                    NavigateUrl="~/adminemployee2.aspx">Detailes</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:GridView style="float: center" align="center" ID="GridView1" runat="server" 
        
         
        AutoGenerateColumns="False" DataKeyNames="empid" 
        DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" 
                SortExpression="empid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="branch" HeaderText="branch" 
                SortExpression="branch" />
        </Columns>
    </asp:GridView>

    
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [empid], [name], [sex], [phone], [branch] FROM [employee]">
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
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminpage3.aspx.vb" Inherits="mine.page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"><style type="text/css">
        .style1
        {
            width: 15%;
            height: 256px;
        }
        .style2
        {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Page Detailes|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Mobile Model List|</h3>
    <hr />
    
<br />
    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hladdstore" runat="server" 
                    NavigateUrl="~/adminpage.aspx">Add Store</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/adminpage1.aspx">Store list</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/adminpage2.aspx">Add Model</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/adminpage3.aspx" ForeColor="White">Model List</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" align="center" style="float: center" runat="server" 
        
        AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id], [name] FROM [model]"
        deletecommand="Delete [model] Where [id] = @id"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
</asp:Content>

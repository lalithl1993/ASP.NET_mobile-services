<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin.Master" CodeBehind="adminemployee1.aspx.vb" Inherits="mine.employee1" %>
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
        width: 69%;
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
    .style9
    {
        width: 325px;
    }
    .style10
    {
        height: 42px;
        width: 325px;
    }
    .style11
    {
        height: 69px;
        width: 325px;
    }
    </style>
    <script type="text/javascript">
        function Validate(sender, args) {
            var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
            var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
            var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
            args.IsValid = (ddlDay.selectedIndex != 0 && ddlMonth.selectedIndex != 0 && ddlYear.selectedIndex != 0)
        }
        function PopulateDays() {
            var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
            var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
            var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
            var y = ddlYear.options[ddlYear.selectedIndex].value;
            var m = ddlMonth.options[ddlMonth.selectedIndex].value != 0;
            if (ddlMonth.options[ddlMonth.selectedIndex].value != 0 && ddlYear.options[ddlYear.selectedIndex].value != 0) {
                var dayCount = 32 - new Date(ddlYear.options[ddlYear.selectedIndex].value, ddlMonth.options[ddlMonth.selectedIndex].value - 1, 32).getDate();
                ddlDay.options.length = 0;
                AddOption(ddlDay, "DD", "0");
                for (var i = 1; i <= dayCount; i++) {
                    AddOption(ddlDay, i, i);
                }
            }
        }
        function AddOption(ddl, text, value) {
            var opt = document.createElement("OPTION");
            opt.text = text;
            opt.value = value;
            ddl.options.add(opt);
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center" style="color: #FFFFFF">    &nbsp;|Manage Employee Accounts|</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|Add Employee|</h3>
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
                    NavigateUrl="~/adminemployee1.aspx" ForeColor="White">Add</asp:HyperLink>
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

    <table style="float: center" class="style3" align="center">
        <tr>
            <td class="style4">
                Employee ID</td>
            <td class="style9">
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td class="style9">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="* Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="* Illigal characters" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z\.\'\-_\s]{1,40}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date of birth</td>
            <td class="style9">
                <%--<asp:Label ID="DD" runat="server" Text="DD"></asp:Label>
                                <asp:TextBox ID="bdate" runat="server" Height="16px" Width="26px"></asp:TextBox>
                                <asp:Label ID="MM" runat="server" Text=" /MM"></asp:Label>
                                <asp:TextBox ID="bmonth" runat="server" Height="16px" Width="30px"></asp:TextBox>
                                <asp:Label ID="YYYY" runat="server" Text=" /YYYY"></asp:Label>
                                <asp:TextBox ID="byear" runat="server" Height="16px" Width="42px"></asp:TextBox>--%>
Day:<asp:DropDownList ID="ddlDay" runat="server" /> 
Month:<asp:DropDownList ID="ddlMonth" runat="server" onchange  = "PopulateDays()" />
Year:<asp:DropDownList ID="ddlYear" runat="server" onchange  = "PopulateDays()" />

                            </td>
            <td>
                
                
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Invalid Date" 
                        ClientValidationFunction = "Validate" ForeColor="Red" />
                    &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" 
                        Text="* Invalid DOB" Visible="False"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td class="style4">
                Sex</td>
            <td class="style9">
                    <asp:RadioButtonList ID="rbsex" runat="server">
                        <asp:ListItem Selected="True">male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Email id</td>
            <td class="style10">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="* Invalid Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="* Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Address</td>
            <td class="style11">
                <asp:TextBox ID="txtaddress" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="227px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="* Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Phone</td>
            <td class="style9">
                <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="* Enter phone number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="* Invalid phone" ForeColor="Red" 
                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Working Branch</td>
            <td class="style9">
                <asp:DropDownList ID="Listbranch" runat="server" Height="16px" Width="114px" 
                    DataSourceID="SqlDataSource1" DataTextField="state" DataValueField="state">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [states] ORDER BY [state]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnadd" runat="server" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="adminemployee.aspx">Cancel</asp:HyperLink>
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

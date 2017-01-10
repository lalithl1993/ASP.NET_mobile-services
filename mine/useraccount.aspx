<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user.Master" CodeBehind="useraccount.aspx.vb" Inherits="mine.manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        .style1
        {
            width: 15%;
            height: 256px;
        }
        .style2
        {
            width: 88px;
        }
        .style3
    {
        width: 57%;
        height: 333px;
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
        width: 214px;
    }
        .style7
    {
        width: 214px;
    }
        .style8
    {
        width: 149px;
        height: 46px;
    }
    .style9
    {
        width: 214px;
        height: 46px;
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
 <h1 align = "center" style="color: #FFFFFF">    &nbsp;|Welcome |</h1>
    <h3 align="center" style="color: #FFFFFF">    &nbsp;|View Accout|</h3>
    <hr />
    <br />
    

    <table style="float: left" class="style1">
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hladdstore" runat="server" 
                    NavigateUrl="~/userhome.aspx">Home</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/userproducts.aspx">Products</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/userquary.aspx">Quaries</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                
                style="background-image: url('../images/templatemo_menu_bg.jpg'); font-size: large;">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/useraccount.aspx" ForeColor="White">Account</asp:HyperLink>
            </td>
        </tr>
    </table>
    <table class="style3" style="float: center" align="center">
        <tr>
            <td class="style4">
                User ID</td>
            <td class="style7">
                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Name</td>
            <td class="style7">
                <asp:TextBox ID="txtname" runat="server" Enabled="False"></asp:TextBox>
                <asp:TextBox ID="txtname1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname1" ErrorMessage="* Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtname1" ErrorMessage="* Illigal chatecters" ForeColor="Red" 
                        ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Date of birth</td>
            <td class="style7">
                <asp:TextBox ID="txtdob" runat="server" Enabled="False"></asp:TextBox>
                    <table id="tabdob" runat="server" visible="false"  align="left">
                        <tr>
                            <td>
<%--                                &nbsp;<asp:Label ID="DD" runat="server" Text="DD"></asp:Label>
                                <asp:TextBox ID="bdate" runat="server" Height="16px" Width="26px"></asp:TextBox>
                                <asp:Label ID="MM" runat="server" Text=" /MM"></asp:Label>
                                <asp:TextBox ID="bmonth" runat="server" Height="16px" Width="30px"></asp:TextBox>
                                <asp:Label ID="YYYY" runat="server" Text=" /YYYY"></asp:Label>
                                <asp:TextBox ID="byear" runat="server" Height="16px" Width="42px"></asp:TextBox>--%>
                                Day:<asp:DropDownList ID="ddlDay" runat="server" /> 
Month:<asp:DropDownList ID="ddlMonth" runat="server" onchange  = "PopulateDays()" />
Year:<asp:DropDownList ID="ddlYear" runat="server" onchange  = "PopulateDays()" />

                            </td>
                        </tr>
                    </table>
                            <br />
                            </td>
            <td class="style7">
               <asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Invalid Date" 
                        ClientValidationFunction = "Validate" ForeColor="Red" />
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Sex</td>
            <td class="style9">
                    <asp:TextBox ID="txtsex" runat="server" Enabled="False"></asp:TextBox>
                </td>
            <td class="style9">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Email id</td>
            <td class="style6">
                <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
&nbsp;<asp:Button ID="btnedit" runat="server" Text="Edit" CausesValidation="False" />
                <asp:Button ID="btnsave" runat="server" Text="save" Visible="False" 
                        Width="55px" />
                <asp:Button ID="btncanael" runat="server" Text="cancel" Visible="False" 
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
</asp:Content>

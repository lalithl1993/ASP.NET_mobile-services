<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="mainsignup.aspx.vb" Inherits="mine.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #Submit1
        {
            height: 26px;
            width: 65px;
        }
        #Button1
        {
            z-index: 1;
            left: 137px;
            top: 316px;
            position: absolute;
            height: 25px;
        }
        #btncancel
        {
            height: 26px;
        }
        #Select1
        {
            width: 127px;
        }
        #selsex
        {
            width: 127px;
        }
        .style15
        {
            width: 120px;
            height: 53px;
        }
        .style16
        {
            width: 395px;
            height: 53px;
        }
        .style17
        {
            width: 201px;
            height: 53px;
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
    <%--<script language="javascript" type="text/javascript">
// <![CDATA[

 

// ]]>
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <br />
    <h1 align="center" style="color: #FFFFFF">    |Customer Registration|</h1>
    <hr />
    <br />
    <br />

        <table  align="center">
            <tr>
                <td class="style15">
                    id</td>
                <td class="style16">
                    <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    Name</td>
                <td class="style16">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="* Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="* Illigal chatecters" ForeColor="Red" 
                        ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Password</td>
                <td class="style16">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="* Fill password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Confirm Password</td>
                <td class="style16">
                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpass" ControlToValidate="txtconpass" 
                        ErrorMessage="* Password mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Email id</td>
                <td class="style16">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="* Enter valid email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="* Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Date Of Birth</td>
                <td class="style16">
Day:<asp:DropDownList ID="ddlDay" runat="server" /> 
Month:<asp:DropDownList ID="ddlMonth" runat="server" onchange  = "PopulateDays()" />
Year:<asp:DropDownList ID="ddlYear" runat="server" onchange  = "PopulateDays()" />
                            
                </td>
                <td class="style17">
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Invalid Date" 
                        ClientValidationFunction = "Validate" ForeColor="Red" />
                    &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red" 
                        Text="* Invalid DOB" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Sex</td>
                <td class="style16">
                    <asp:RadioButtonList ID="rbsex" runat="server">
                        <asp:ListItem Selected="True">male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    </td>
                <td class="style16">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="67px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mainsupport.aspx">CANCEL</asp:HyperLink>
                </td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    &nbsp;&nbsp;&nbsp;
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
    </div>
</asp:Content>

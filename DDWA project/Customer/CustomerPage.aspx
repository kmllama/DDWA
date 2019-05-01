<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPage.aspx.cs" Inherits="DDWA_project.Customer.CustomerPageaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 1790px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 235px;
        }
        .auto-style6 {
            width: 646px;
        }
        .auto-style7 {
            height: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="txtuserName" runat="server" Text=""></asp:Label></td>
                    <td class="auto-style1">
                        <asp:Button ID="btnLogOut" runat="server" Text="Log Out" Width="87px" /></td>
                </tr>
            </table>
            <div>

            </div>
        </div>
    </form>
</body>
</html>

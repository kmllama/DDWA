<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainBusinessPage2.aspx.cs" Inherits="DDWA_project.MainBusinessPage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> 
                    <a class="navbar-brand" runat="server" href="~/">
                        </a></h1>
    <p> 
        <asp:Label ID="lblerror" runat="server"></asp:Label>
    </p>

    <table class="nav-justified">
        <tr>
            <td class="text-center" style="width: 234px; height: 45px">
                <asp:Image ID="imgLogo" runat="server" />
            </td>
            <td style="width: 731px; height: 45px">
                <asp:Label ID="lblBname" runat="server"></asp:Label>
            </td>
            <td style="height: 45px">
                <asp:Label ID="lblOwner" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 234px">
                <asp:Label ID="lblBusinessID" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 731px">&nbsp;</td>
            <td>
                <asp:Label ID="lblID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td class="text-center" style="width: 731px">
                <asp:Image ID="Img1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 731px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 731px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 731px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

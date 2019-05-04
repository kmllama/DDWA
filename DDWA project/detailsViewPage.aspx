<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsViewPage.aspx.cs" Inherits="DDWA_project.detailsViewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .auto-style139 {
            margin-right: 358px;
        }
        .auto-style140 {
            width: 139%;
            height: 1022px;
        }
        .auto-style141 {
            height: 26px;
        }
        .auto-style142 {
            height: 26px;
            width: 102px;
            }
        .auto-style146 {
            width: 102px;
        }
        .auto-style149 {
            height: 26px;
            text-align: center;
        }
        .auto-style150 {
            width: 93%;
            height: 290px;
        }
        .auto-style151 {
            text-decoration: underline;
        }
        .auto-style153 {
            height: 26px;
            width: 121px;
        }
        .auto-style155 {
            width: 121px;
        }
        .auto-style156 {
            width: 121px;
            height: 27px;
        }
        .auto-style157 {
            height: 27px;
        }
        .auto-style158 {
            width: 742px;
            text-align: center;
        }
        .auto-style160 {
            width: 100%;
        }
        .auto-style166 {
            width: 513px;
        }
        .auto-style167 {
            text-align: left;
            width: 513px;
        }
        .auto-style170 {
            width: 432px;
        }
        .auto-style171 {
            text-align: center;
        }
        .auto-style172 {
            width: 102px;
            height: 90px;
        }
        .auto-style173 {
            height: 90px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">

        <div class="auto-style171">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style139" DataKeyField="biz_id" DataSourceID="SqlDataSource1" Height="1100px" Width="1100px">
                <ItemTemplate>
                    <table class="auto-style140">
                        <tr>
                            <td class="auto-style142">
                                <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" ImageUrl='<%# Eval("logo") %>' />
                            </td>
                            <td class="auto-style149" colspan="2">
                                <asp:Label ID="bizName" runat="server" Text='<%# Eval("b_name") %>' Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                            </td>
                            <td class="auto-style141"></td>
                        </tr>
                        <tr>
                            <td class="auto-style146">&nbsp;</td>
                            <td class="auto-style166">
                                <table class="auto-style150">
                                    <tr>
                                        <td class="auto-style155">
                                            <h3>Contact</h3>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style153">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td class="auto-style141">
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("address1") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style155">Town&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("town") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style155">City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style155">Post Code&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("post_code") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style156">Contact No.:</td>
                                        <td class="auto-style157">
                                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style155">Website&nbsp;&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("b_weblink") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style155">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("b_email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style158">
                                <asp:Image ID="Image2" runat="server" Height="500px" ImageUrl='<%# Eval("image1") %>' Width="597px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style146">
                                &nbsp;</td>
                            <td class="auto-style167">&nbsp;<br />
                                <h2>Business Hours</h2>
                                <asp:Label ID="BusinessHours" runat="server" Text='<%# Eval("b_opening_time") %>'></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td>
                                <h3><span class="auto-style151">Aobut Us</span></h3>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("about_us") %>'></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style172"></td>
                            <td colspan="2" class="auto-style173">
                                <table class="auto-style160">
                                    <tr>
                                        <td class="auto-style170">
                                            <h2>More From Us</h2>
                                            <asp:Label ID="Additional" runat="server" Text='<%# Eval("additional") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <h3><span class="auto-style151">Available Services</span></h3>
                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("about_us") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style173"></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT DISTINCT business_details.biz_id, business_details.b_password, business_details.b_name, business_details.owner_name, business_details.b_type, business_details.b_join_date, business_details.address1, business_details.town, business_details.area, business_details.city, business_details.post_code, business_details.country, business_details.contact_phone, business_details.contact_mobile, business_details.b_email, business_details.b_weblink, business_details.b_social_site, business_details.about_us, business_details.b_description, business_details.b_history, business_details.b_opening_time, business_details.additional, business_details.service_available, image.logo, image.image1, image.image3, image.image2 FROM business_details INNER JOIN image ON business_details.biz_id = image.biz_id WHERE (business_details.biz_id = @Param1)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
         <br />
         <br />
    </form>
</body>
</html>
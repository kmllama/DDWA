<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainBusinessPage.aspx.cs" Inherits="DDWA_project.MainBusinessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 39px;
            background-color: #CCCCFF;
        }
        .auto-style30 {
            width: 1001px;
        }
        .auto-style38 {
            width: 909px;
        }
        .auto-style39 {
            text-decoration: underline;
        }
        .auto-style40 {
            width: 1210px;
            height: 26px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style106 {
            text-align: justify;
            height: 155px;
            background-color: #CCCCFF;
            width: 1210px;
        }
        .auto-style107 {
            width: 1149px;
            height: 140px;
            text-align: justify;
            background-color: #CCCCFF;
        }
        .auto-style108 {
            text-align: justify;
            height: 140px;
            background-color: #CCCCFF;
        }
        .auto-style109 {
            text-align: justify;
            background-color: #CCCCFF;
        }
        .auto-style110 {
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style117 {
            width: 141px;
        }
        .auto-style118 {
            width: 141px;
            height: 26px;
        }
        .auto-style119 {
            width: 262px;
        }
        .auto-style120 {
            height: 26px;
            width: 262px;
        }
        .auto-style121 {
            width: 1149px;
            height: 329px;
            text-align: justify;
            background-color: #CCCCFF;
        }
        .auto-style122 {
            text-align: justify;
            height: 329px;
            background-color: #CCCCFF;
        }
        .auto-style126 {
            height: 99px;
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style127 {
            height: 99px;
            background-color: #FFFFFF;
        }
        .auto-style128 {
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style131 {
            text-align: justify;
            height: 155px;
            background-color: #CCCCFF;
        }
        .auto-style133 {
            height: 26px;
            background-color: #FFFFFF;
        }
        .auto-style134 {
            text-align: justify;
            margin-left: 0px;
        }
        .auto-style135 {
            width: 2119px;
            height: 26px;
            background-color: #FFFFFF;
        }
        .auto-style136 {
            width: 101%;
            height: 230px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
       
        <div class="Container">
            <asp:FormView ID="FormView1" runat="server" Height="1098px" Width="1634px" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" AllowPaging="True">
                <ItemTemplate>
                     <div class="Container-fluid">
                    <table class="table auto-style1">
                        <tr>
                            <td class="auto-style30" rowspan="14">
                                &nbsp;</td>
                            <td class="auto-style127">
                                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("logo") %>' Width="63px" />
                            </td>
                            <td class="auto-style126" colspan="3">
                                <h1 class="auto-style134">
                                    <asp:Label ID="BusinessName" runat="server" CssClass="auto-style39" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" style="" Text='<%# Eval("b_name") %>'></asp:Label>
                                </h1>
                            </td>
                            <td class="auto-style38" rowspan="14">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style128" colspan="4">
                                <asp:Image ID="Image2" runat="server" Height="505px" ImageAlign="Middle" ImageUrl='<%# Eval("image1") %>' Width="971px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style121" colspan="2">
                                <span class="auto-style39"><strong>Contact Details</strong></span><br />
                                <table class="auto-style136">
                                    <tr>
                                        <td class="auto-style117"><strong>Business Type:</strong></td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lblBtype" runat="server" Text='<%# Eval("b_type") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Owner</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="owner" runat="server" Text='<%# Eval("owner_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style118">Contact :</td>
                                        <td class="auto-style120">
                                            <asp:Label ID="lblContact1" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Mobile :</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lbl8" runat="server" Text='<%# Eval("contact_mobile") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Email :</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lbl9" runat="server" Text='<%# Eval("b_email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Website:</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lbl10" runat="server" Text='<%# Eval("b_weblink") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">&nbsp;</td>
                                        <td class="auto-style119">&nbsp;</td>
                                    </tr>
                                </table>
                                <span class="auto-style39"><strong>
                                ADDRESS<br /></strong></span> <br />
                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("address1") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl4" runat="server" Text='<%# Eval("town") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl5" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl6" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lblPostCode" runat="server" Text='<%# Eval("post_code") %>'></asp:Label>
                                <br />
                            </td>

                            <td class="auto-style122" colspan="2">
                                <span class="auto-style39"><strong>About US</strong></span><br />
                                <asp:Label ID="lblAbout" runat="server" Font-Size="Medium" Text='<%# Eval("about_us") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style131" colspan="3">
                                <h3><span class="auto-style39"><strong>Our Service</strong></span></h3>
                                <br />
                                <asp:Label ID="lblServiceAvailable" runat="server" Text='<%# Eval("service_available") %>'></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="auto-style106"><span class="auto-style39"><strong>Business Hours</strong></span><br />
                                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("b_opening_time") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style107" colspan="2">
                                <h3><span class="auto-style39"><strong>Business Description</strong></span></h3>
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("b_description") %>'></asp:Label>
                            </td>
                            <td class="auto-style108" colspan="2">
                                <h3 class="auto-style39"><strong>History</strong></h3>
&nbsp;<br />
                                <asp:Label ID="lblHistory" runat="server" Text='<%# Eval("b_history") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style109" colspan="3">
                                <h3><strong>Event &amp; Others</strong></h3>
                                <br />
                                <asp:Label ID="Additional" runat="server" Text='<%# Eval("additional") %>'></asp:Label>
                            </td>
                            <td class="auto-style110">
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("image3") %>' />
                            </td>
                        </tr>
                    </table>                        
                          </div>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT DISTINCT business_details.biz_id, business_details.b_password, business_details.b_name, business_details.owner_name, business_details.b_type, business_details.b_join_date, business_details.address1, business_details.town, business_details.area, business_details.city, business_details.post_code, business_details.country, business_details.contact_phone, business_details.contact_mobile, business_details.b_email, business_details.b_weblink, business_details.b_social_site, business_details.about_us, business_details.b_description, business_details.b_history, business_details.b_opening_time, business_details.additional, business_details.service_available, image.logo, image.image1, image.image3, image.image2 FROM business_details INNER JOIN image ON business_details.biz_id = image.biz_id WHERE (business_details.biz_id = @Param1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="Param1" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="1006" Visible="False"></asp:Label>
    </form>
</body>
</html>

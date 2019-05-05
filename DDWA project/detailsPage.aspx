<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsPage.aspx.cs" Inherits="DDWA_project.detailsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            width: 196px;
            height: 26px;
            background-color: #CCCCCC;
        }
        .auto-style7 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            width: 93px;
            height: 210px;
        }
        .auto-style11 {
            text-align: center;
            height: 210px;
        }
        .auto-style12 {
            height: 210px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            text-decoration: underline;
            background-color: #00CC99;
        }
        .auto-style15 {
            text-decoration: underline;
            width: 690px;
            background-color: #00CC99;
        }
        .auto-style17 {
            width: 701px;
        }
        .auto-style18 {
            width: 93px;
            height: 260px;
        }
        .auto-style20 {
            background-color: #00CC99;
        }
        .auto-style25 {
            width: 212px;
            height: 26px;
        }
        .auto-style26 {
            width: 49%;
            height: 155px;
            background-color: #CCCCCC;
        }
        .auto-style27 {
            height: 26px;
            background-color: #CCCCCC;
        }
        .auto-style28 {
            background-color: #CCCCCC;
        }
        .auto-style29 {
            width: 196px;
            background-color: #CCCCCC;
        }
        .auto-style30 {
            height: 260px;
        }
        .auto-style31 {
            text-align: center;
            width: 110px;
        }
        .auto-style32 {
            text-align: center;
            width: 1174px;
        }
        .auto-style33 {
            width: 212px;
        }
        .auto-style34 {
            text-align: center;
            background-color: #00CC99;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
       
        <div class="Container">
            
      
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="1280px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Eval("logo") %>' Width="120px" />
                            </td>
                            <td class="auto-style34" colspan="2">
                                <h2>
                                    <asp:Label ID="Label1" runat="server" Height="85px" Text='<%# Eval("b_name") %>' Width="902px"></asp:Label>
                                </h2>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style11" colspan="2">
                                <asp:Image ID="Image2" runat="server" Height="400px" ImageUrl='<%# Eval("image1") %>' Width="900px" />
                            </td>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <h2 class="auto-style14">About US</h2>
                                <asp:Label ID="Label22" runat="server" Text='<%# Eval("about_us") %>'></asp:Label>
                            </td>
                            <td>
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="2">&nbsp;&nbsp;<br />
                                            <h2 class="auto-style14">Details</h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Business Type</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("b_type") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Town</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("town") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">City</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Post Code</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("post_code") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Contact 1</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Contact 2</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("contact_mobile") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style17">
                                <table class="auto-style1">
                                    <tr>
                                        <td colspan="2">
                                            <h2 class="auto-style14">Follow US</h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Facebook</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("b_social_site") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style29">Email Us</td>
                                        <td class="auto-style28">
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("b_email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Website</td>
                                        <td class="auto-style27">
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("b_weblink") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style13">
                                <div class="auto-style13">
                                    <h2 class="auto-style14">Business Hours</h2>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("b_opening_time") %>'></asp:Label>
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18"></td>
                            <td class="auto-style30" colspan="2">
                                <h2 class="auto-style15">Our History</h2>
                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("b_history") %>'></asp:Label>
                            </td>
                            <td class="auto-style30"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style17">
                                <h2 class="auto-style15">Additional </h2>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("additional") %>'></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image3" runat="server" Height="300px" ImageUrl='<%# Eval("image1") %>' Width="400px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            
      
        </div>
      
        <br />
        <asp:DataList ID="DataList2" runat="server" DataKeyField="biz_id" DataSourceID="SqlDataSourceEvent">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style32">
                            <h2 class="auto-style20">Upcoming Events</h2>
                            <div class="auto-style3">
                                <br />
                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("event_details") %>'></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                            <table class="auto-style26">
                                <tr>
                                    <td class="auto-style33">Event Name</td>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("event_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">Event Date</td>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("event_date") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style33">Event Time</td>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT DISTINCT business_details.biz_id, business_details.b_name, business_details.b_type, business_details.town, business_details.city, business_details.post_code, business_details.contact_phone, business_details.contact_mobile, business_details.b_email, business_details.b_weblink, business_details.b_social_site, business_details.about_us, business_details.b_description, business_details.b_history, business_details.b_opening_time, business_details.additional, business_details.service_available, image.s_no, image.logo, image.image1, image.image2, image.biz_id AS Expr1 FROM business_details INNER JOIN image ON business_details.biz_id = image.biz_id WHERE (business_details.biz_id = @Param1)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceEvent" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT TOP (1) business_details.biz_id, event.event_name, event.event_details, event.event_date, event.time FROM business_details INNER JOIN event ON business_details.biz_id = event.biz_id WHERE (business_details.biz_id = @Param1)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
      
    </form>
</body>
</html>

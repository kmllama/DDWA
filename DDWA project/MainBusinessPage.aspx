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
        .auto-style30 {
            width: 723px;
        }
        .auto-style38 {
            width: 909px;
        }
        .auto-style39 {
            text-decoration: underline;
        }
        .auto-style106 {
            text-align: left;
            height: 155px;
            background-color: #FFFFFF;
            width: 1210px;
        }
        .auto-style107 {
            width: 751px;
            height: 140px;
            text-align: justify;
            background-color: #FFFFFF;
        }
        .auto-style108 {
            text-align: left;
            height: 140px;
            background-color: #FFFFFF;
        }
        .auto-style109 {
            text-align: justify;
            background-color: #FFFFFF;
            width: 279px;
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
            width: 751px;
            height: 329px;
            text-align: justify;
            background-color: #FFFFFF;
        }
        .auto-style122 {
            text-align: justify;
            height: 329px;
            background-color: #FFFFFF;
        }
        .auto-style127 {
            height: 44px;
            background-color: #FFFFFF;
        }
        .auto-style128 {
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style131 {
            text-align: justify;
            height: 155px;
            background-color: #FFFFFF;
            width: 268435456px;
        }
        .auto-style136 {
            width: 97%;
            height: 211px;
            color: #000000;
            background-color: #CCCCCC;
        }
        .auto-style137 {
            text-align: left;
        }
        .auto-style138 {
            text-decoration: underline;
            text-align: left;
            background-color: #00CC99;
        }
        .auto-style140 {
            text-align: justify;
            width: 19px;
        }
        .auto-style142 {
            width: 591px;
        }
        .auto-style143 {
            height: 26px;
            width: 19px;
        }
        .auto-style144 {
            width: 591px;
            height: 26px;
        }
        .auto-style146 {
            width: 29px;
        }
        .auto-style147 {
            width: 29px;
            height: 26px;
        }
        .auto-style148 {
            height: 26px;
        }
        .auto-style150 {
            width: 167px;
        }
        .auto-style151 {
            text-align: center;
            width: 875px;
        }
        .auto-style152 {
            background-color: #FFFFFF;
            text-align: center;
            height: 459px;
        }
        .auto-style153 {
            width: 145px;
        }
        .auto-style154 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style155 {
            height: 1797px;
        }
        .auto-style156 {
            text-align: right;
        }
        .auto-style157 {
            background-color: #00CC99;
        }
        .auto-style158 {
            text-align: left;
            background-color: #00CC99;
        }
        .auto-style159 {
            width: 493px;
            height: 33px;
            background-color: #00CC99;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
       
        <div class="Container">
            
            <asp:FormView ID="FormView1" runat="server" Height="1098px" Width="1634px" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" AllowPaging="True">
                <ItemTemplate>
                     <div class="Container-fluid">
                                                     
                    <table class="auto-style155" style="white-space: normal; background-color: #FFFFFF;" aria-atomic="True">
                        <tr>
                            <td class="auto-style30" rowspan="15">
                                &nbsp;</td>
                            <td class="auto-style127" colspan="4">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style150">
                                            <asp:Image ID="Image1" runat="server" Height="83px" ImageUrl='<%# Eval("logo") %>' Width="105px" />
                                        </td>
                                        <td class="auto-style151">
                                            <asp:Label ID="BusinessName" runat="server" CssClass="auto-style39" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" style="" Text='<%# Eval("b_name") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style156">
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/image/home.JPG" OnClick="ImageButton1_Click" Width="47px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style38" rowspan="15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style152" colspan="4">
                                <asp:Image ID="Image2" runat="server" Height="455px" ImageAlign="Middle" ImageUrl='<%# Eval("image1") %>' Width="879px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style121">
                                <h3>&nbsp;</h3>
                                <h3 class="auto-style157"><span class="auto-style39"><strong>Contact Details</strong></span></h3>
                                <br />
                                <table class="auto-style136" style="border-color:  #000000; border-width: medium">
                                    <tr>
                                        <td class="auto-style117"><strong>Business Type:</strong></td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lblBtype" runat="server" Text='<%# Eval("b_type") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Owner&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="owner" runat="server" Text='<%# Eval("owner_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style118">Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td class="auto-style120">
                                            <asp:Label ID="lblContact1" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lbl8" runat="server" Text='<%# Eval("contact_mobile") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td class="auto-style119">
                                            <asp:Label ID="lbl9" runat="server" Text='<%# Eval("b_email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style117">Website&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
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
                                <br />
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

                            <td class="auto-style122" colspan="3">
                                <h2 class="auto-style157"><span class="auto-style39"><strong>About US</strong></span></h2>
                                <asp:Label ID="lblAbout" runat="server" Font-Size="Medium" Text='<%# Eval("about_us") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style122" colspan="4" style="border-top-style: solid; border-bottom-style: solid">
                                <h3><span class="auto-style39"><strong>Our Service</strong></span></h3>
                                <p>
                                    <asp:Label ID="lblServiceAvailable" runat="server" Text='<%# Eval("service_available") %>'></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style131" colspan="3">
                                <h3 class="auto-style157"><strong><span class="auto-style157">Upcoming</span> Events</strong></h3>
                                <div class="auto-style137">
                                    <table class="auto-style154">
                                        <tr>
                                            <td class="auto-style153">Event Name:</td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("event_name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style153">Date:</td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("event_date") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style153">Time</td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <h3>Details:</h3>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("event_details") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </div>
                            </td>
                            <td class="auto-style106">
                                <table class="auto-style1" border="0">
                                    <tr>
                                        <td class="auto-style140">&nbsp;</td>
                                        <td class="auto-style142" style="border-style: solid; border-width: thin">
                                            <h2 class="auto-style158"><span class="auto-style39"><strong>Business Hours</strong></span></h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style143"></td>
                                        <td class="auto-style144" style="border-style: solid; border-width: thin">
                                            <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("b_opening_time") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="border-top-style: solid; border-width: thin">
                            <td class="auto-style107">
                                <h3 class="auto-style157"><span class="auto-style39"><strong>Business Description</strong></span></h3>
                                <br />
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("b_description") %>'></asp:Label>
                            </td>
                            <td class="auto-style108" colspan="3">
&nbsp;<table class="auto-style1">
                                    <tr>
                                        <td class="auto-style146">&nbsp;</td>
                                        <td>
                                            <h3 class="auto-style138"><strong>History</strong></h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style147"></td>
                                        <td class="auto-style148">
                                            <asp:Label ID="lblHistory" runat="server" Text='<%# Eval("b_history") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style109" colspan="2">
                                <br />
                            </td>
                            <td class="auto-style128" colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>                        
                          </div>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT DISTINCT business_details.biz_id, business_details.b_password, business_details.b_name, business_details.owner_name, business_details.b_type, business_details.b_join_date, business_details.address1, business_details.town, business_details.area, business_details.city, business_details.post_code, business_details.country, business_details.contact_phone, business_details.contact_mobile, business_details.b_email, business_details.b_weblink, business_details.b_social_site, business_details.about_us, business_details.b_description, business_details.b_history, business_details.b_opening_time, business_details.additional, business_details.service_available, image.logo, image.image1, image.image3, image.image2, event.event_name, event.event_details, event.event_date, event.time FROM business_details INNER JOIN image ON business_details.biz_id = image.biz_id INNER JOIN event ON business_details.biz_id = event.biz_id WHERE (business_details.biz_id = @Param1)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

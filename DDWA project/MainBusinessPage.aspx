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
        .auto-style5 {
            width: 615px;
            height: 50px;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style22 {
            text-align: justify;
            height: 336px;
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
            width: 1134px;
            height: 50px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style54 {
            width: 1351px;
            height: 336px;
            text-align: justify;
            background-color: #CCCCFF;
        }
        .auto-style67 {
            text-align: center;
            height: 50px;
            width: 3123px;
            background-color: #FFFFFF;
        }
        .auto-style69 {
            width: 1457px;
        }
        .auto-style70 {
            height: 26px;
        }
        .auto-style71 {
            width: 1394px;
            height: 26px;
        }
        .auto-style73 {
            height: 26px;
            width: 111px;
        }
        .auto-style74 {
            width: 111px;
        }
        .auto-style75 {
            width: 1394px;
        }
        .auto-style76 {
            width: 1609px;
        }
        .auto-style77 {
            width: 1457px;
            height: 26px;
        }
        .auto-style78 {
            height: 26px;
            width: 102px;
        }
        .auto-style79 {
            width: 102px;
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
                            <td class="auto-style30" rowspan="10">
                                &nbsp;</td>
                            <td class="auto-style5">
                                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# Eval("logo") %>' Width="63px" />
                            </td>
                            <td class="auto-style67">
                                <asp:Label ID="BusinessName" runat="server" CssClass="auto-style39" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" style="" Text='<%# Eval("b_name") %>'></asp:Label>
                            </td>
                            <td class="auto-style40"></td>
                            <td class="auto-style38" rowspan="10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style13" colspan="3">
                                <asp:Image ID="Image2" runat="server" Height="505px" ImageAlign="Middle" ImageUrl='<%# Eval("image1") %>' Width="971px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="3">
                                <strong>Business Type: </strong>
                                <asp:Label ID="lblBtype" runat="server" Text='<%# Eval("b_type") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style54">
                                <span class="auto-style39"><strong>Contact Details</strong></span><br />
                                <br />
                                Contact :
                                <asp:Label ID="lblContact1" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                                <br />
                                Mobile :<asp:Label ID="lbl8" runat="server" Text='<%# Eval("contact_mobile") %>'></asp:Label>
                                <br />
                                Email :<asp:Label ID="lbl9" runat="server" Text='<%# Eval("b_email") %>'></asp:Label>
                                <br />
                                Website:
                                <asp:Label ID="lbl10" runat="server" Text='<%# Eval("b_weblink") %>'></asp:Label>
                                <br />
                                <br />
                                <span class="auto-style39"><strong>ADDRESS</strong></span><br />
                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("address1") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl4" runat="server" Text='<%# Eval("town") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl5" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lbl6" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblPostCode" runat="server" Text='<%# Eval("post_code") %>'></asp:Label>
                                <br />
                            </td>

                            <td class="auto-style22" colspan="2">
                                <span class="auto-style39"><strong>About US</strong></span><br />
                                <asp:Label ID="lblAbout" runat="server" Font-Size="Medium" Text='<%# Eval("about_us") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                         <table class="auto-style76">
                             <tr>
                                 <td class="auto-style78">a </td>
                                 <td class="auto-style71"> 
                                     <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("b_description") %>'></asp:Label>
                                 </td>
                                 <td class="auto-style70"></td>
                             </tr>
                               <tr>
                                 <td class="auto-style79">a </td>
                                 <td class="auto-style75"> b</td>
                                   <td></td>
                             </tr>
                         </table>
                          <table>
                             <tr>
                                 <td class="auto-style73">a </td>
                                 <td class="auto-style77"> b</td>
                                 <td class="auto-style70"></td>
                             </tr>
                               <tr>
                                 <td class="auto-style74">a </td>
                                 <td class="auto-style69"> b</td>
                                   <td></td>
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

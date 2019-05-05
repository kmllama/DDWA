<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessPage.aspx.cs" Inherits="DDWA_project.Business.BusinessPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Business User Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }
        .auto-style2 {
            width: 361px;
            height: 282px;
        }
        .auto-style3 {
            margin-right: 5px;
        }
    </style>


</head>
<body>
    <nav class="navbar navbar-expand-md bg-info navbar-dark">
        <a class="navbar-brand" href="#"><b>DDWA</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="../DefaultPage.aspx">Home</a>
                </li>
                           <li class="nav-item">
                    <a class="nav-link" href="#">Explore</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="uploadImage.aspx">upload Image</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="EditImage.aspx">Edit Image</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../MainBusinessPage.aspx">BizPage</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../Business/addEvent.aspx">Add Event </a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" href="../Business/EditEvent.aspx">Edit Event </a>
                </li>
              
              
                <!--https://www.youtube.com/watch?v=pkIqgB3fH70&list=PLbGui_ZYuhij_HswuaGK-ABs1vfC5HTKn&index=58-->
            </ul>



        </div>
    </nav>
    <!--Login System-->    

    <div class="container">
         <form id="form1" runat="server">
        <table><tr>
            <td class="auto-style1">
                ID:
                <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
              </td>
            <td>  
                <asp:Button ID="logOut" runat="server" Height="33px" OnClick="logOut_Click" Text="Log Out" Width="93px" />
            </td>
               </tr></table>
             
        <div class="row">
            <div class="col-md-8">
                
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="biz_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="599px" Width="592px" CssClass="auto-style3">
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="biz_id" HeaderText="B. ID" ReadOnly="True" SortExpression="biz_id" />
                            <asp:BoundField DataField="b_password" HeaderText="Password" SortExpression="b_password" />
                            <asp:BoundField DataField="b_name" HeaderText="B. Name" SortExpression="b_name" />
                            <asp:BoundField DataField="owner_name" HeaderText="Owner Name" SortExpression="owner_name" />
                            <asp:BoundField DataField="b_type" HeaderText="B. Type" SortExpression="b_type" />
                           
                            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
                            <asp:BoundField DataField="town" HeaderText="Town" SortExpression="town" />
                            <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" />
                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                            <asp:BoundField DataField="post_code" HeaderText="Post Code" SortExpression="post_code" />
                            <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                            <asp:BoundField DataField="contact_phone" HeaderText="Contact" SortExpression="contact_phone" />
                            <asp:BoundField DataField="contact_mobile" HeaderText="Contact Mob." SortExpression="contact_mobile" />
                            <asp:BoundField DataField="b_email" HeaderText="Email" SortExpression="b_email" />
                            <asp:BoundField DataField="b_weblink" HeaderText="Website" SortExpression="b_weblink" />
                            <asp:BoundField DataField="b_social_site" HeaderText="Social Site" SortExpression="b_social_site" />
                            <asp:BoundField DataField="about_us" HeaderText="About Us" SortExpression="about_us" />
                            <asp:BoundField DataField="b_description" HeaderText="B. Description" SortExpression="b_description" />
                            <asp:BoundField DataField="b_history" HeaderText="B. History" SortExpression="b_history" />
                            <asp:BoundField DataField="b_opening_time" HeaderText="Opening Time" SortExpression="b_opening_time" />
                            <asp:BoundField DataField="additional" HeaderText="Additional" SortExpression="additional" />
                            <asp:BoundField DataField="service_available" HeaderText="Service" SortExpression="service_available" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT * FROM [business_details] WHERE ([biz_id] = @biz_id)" DeleteCommand="DELETE FROM [business_details] WHERE [biz_id] = @biz_id" InsertCommand="INSERT INTO [business_details] ([biz_id], [b_password], [b_name], [owner_name], [b_type], [b_join_date], [address1], [town], [area], [city], [post_code], [country], [contact_phone], [contact_mobile], [b_email], [b_weblink], [b_social_site], [about_us], [b_description], [b_history], [b_opening_time], [additional], [service_available]) VALUES (@biz_id, @b_password, @b_name, @owner_name, @b_type, @b_join_date, @address1, @town, @area, @city, @post_code, @country, @contact_phone, @contact_mobile, @b_email, @b_weblink, @b_social_site, @about_us, @b_description, @b_history, @b_opening_time, @additional, @service_available)" UpdateCommand="UPDATE [business_details] SET [b_password] = @b_password, [b_name] = @b_name, [owner_name] = @owner_name, [b_type] = @b_type, [b_join_date] = @b_join_date, [address1] = @address1, [town] = @town, [area] = @area, [city] = @city, [post_code] = @post_code, [country] = @country, [contact_phone] = @contact_phone, [contact_mobile] = @contact_mobile, [b_email] = @b_email, [b_weblink] = @b_weblink, [b_social_site] = @b_social_site, [about_us] = @about_us, [b_description] = @b_description, [b_history] = @b_history, [b_opening_time] = @b_opening_time, [additional] = @additional, [service_available] = @service_available WHERE [biz_id] = @biz_id">
                        <DeleteParameters>
                            <asp:Parameter Name="biz_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="biz_id" Type="Int32" />
                            <asp:Parameter Name="b_password" Type="String" />
                            <asp:Parameter Name="b_name" Type="String" />
                            <asp:Parameter Name="owner_name" Type="String" />
                            <asp:Parameter Name="b_type" Type="String" />
                            <asp:Parameter DbType="Date" Name="b_join_date" />
                            <asp:Parameter Name="address1" Type="String" />
                            <asp:Parameter Name="town" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="post_code" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="contact_phone" Type="String" />
                            <asp:Parameter Name="contact_mobile" Type="String" />
                            <asp:Parameter Name="b_email" Type="String" />
                            <asp:Parameter Name="b_weblink" Type="String" />
                            <asp:Parameter Name="b_social_site" Type="String" />
                            <asp:Parameter Name="about_us" Type="String" />
                            <asp:Parameter Name="b_description" Type="String" />
                            <asp:Parameter Name="b_history" Type="String" />
                            <asp:Parameter Name="b_opening_time" Type="String" />
                            <asp:Parameter Name="additional" Type="String" />
                            <asp:Parameter Name="service_available" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblid" Name="biz_id" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="b_password" Type="String" />
                            <asp:Parameter Name="b_name" Type="String" />
                            <asp:Parameter Name="owner_name" Type="String" />
                            <asp:Parameter Name="b_type" Type="String" />
                            <asp:Parameter DbType="Date" Name="b_join_date" />
                            <asp:Parameter Name="address1" Type="String" />
                            <asp:Parameter Name="town" Type="String" />
                            <asp:Parameter Name="area" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="post_code" Type="String" />
                            <asp:Parameter Name="country" Type="String" />
                            <asp:Parameter Name="contact_phone" Type="String" />
                            <asp:Parameter Name="contact_mobile" Type="String" />
                            <asp:Parameter Name="b_email" Type="String" />
                            <asp:Parameter Name="b_weblink" Type="String" />
                            <asp:Parameter Name="b_social_site" Type="String" />
                            <asp:Parameter Name="about_us" Type="String" />
                            <asp:Parameter Name="b_description" Type="String"/>
                            <asp:Parameter Name="b_history" Type="String" />
                            <asp:Parameter Name="b_opening_time" Type="String" />
                            <asp:Parameter Name="additional" Type="String" />
                            <asp:Parameter Name="service_available" Type="String" />
                            <asp:Parameter Name="biz_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>                    
                    <br />
                </form>
        </div>            
       
        <div class="col-md-4">
            <img src="../image/ddwa.JPG" class="auto-style2" />
        </div>
    </div>
     
    
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
     <div class="container-fluid bg-info fixed-bottom">
         <footer>
             <br />
             &copy; <%: DateTime.Now.Year %>-Kamal & Son 
            <br />
             <br />

         </footer>
     </div>

        </div>


</body>
</html>






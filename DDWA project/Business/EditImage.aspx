<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditImage.aspx.cs" Inherits="DDWA_project.EditImage" %>
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
                    <a class="nav-link" href="../About.aspx">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../Contact.aspx">Contact Us</a>
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
                    <a class="nav-link" href="../MainBusinessPage2.aspx">BizPage</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../Business/addEvent.aspx">Add Event </a>
                </li>
                 
                <!-- dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Register</a>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">Business</a>
                        <a href="../Customer/customerRegister.aspx" class="dropdown-item">Customer</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Sign In</a>
                    <div class="dropdown-menu">
                        <a href="../Business/businessLogin.aspx" class="dropdown-item">Business</a>
                        <a href="../Customer/customerLogin.aspx" class="dropdown-item">Customers</a>
                    </div>
                </li>
                <!--https://www.youtube.com/watch?v=pkIqgB3fH70&list=PLbGui_ZYuhij_HswuaGK-ABs1vfC5HTKn&index=58-->
            </ul>



        </div>
    </nav>
    <!--Login System-->    
    
    <div class="container">
        <div class="row">
            <div class="col-md-8">

                <form id="form1" runat="server">
                    Member:
                    <asp:Label ID="txtBizID" runat="server"></asp:Label>
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="262px" Width="751px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="s_no" DataSourceID="SqlDataSource1" ForeColor="Black" AllowPaging="True">
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="s_no" HeaderText="s_no" ReadOnly="True" SortExpression="s_no" />
                            <asp:BoundField DataField="logo" HeaderText="logo" SortExpression="logo" />
                            <asp:BoundField DataField="image1" HeaderText="image1" SortExpression="image1" />
                            <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
                            <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
                            <asp:BoundField DataField="biz_id" HeaderText="biz_id" SortExpression="biz_id" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" DeleteCommand="DELETE FROM [image] WHERE [s_no] = @s_no" InsertCommand="INSERT INTO [image] ([s_no], [logo], [image1], [image2], [image3], [biz_id]) VALUES (@s_no, @logo, @image1, @image2, @image3, @biz_id)" SelectCommand="SELECT * FROM [image] WHERE ([biz_id] = @biz_id)" UpdateCommand="UPDATE [image] SET [logo] = @logo, [image1] = @image1, [image2] = @image2, [image3] = @image3, [biz_id] = @biz_id WHERE [s_no] = @s_no">
                        <DeleteParameters>
                            <asp:Parameter Name="s_no" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="s_no" Type="Int32" />
                            <asp:Parameter Name="logo" Type="String" />
                            <asp:Parameter Name="image1" Type="String" />
                            <asp:Parameter Name="image2" Type="String" />
                            <asp:Parameter Name="image3" Type="String" />
                            <asp:Parameter Name="biz_id" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtBizID" Name="biz_id" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="logo" Type="String" />
                            <asp:Parameter Name="image1" Type="String" />
                            <asp:Parameter Name="image2" Type="String" />
                            <asp:Parameter Name="image3" Type="String" />
                            <asp:Parameter Name="biz_id" Type="Int32" />
                            <asp:Parameter Name="s_no" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </form>


                </div>
       
        <div class="col-md-4">
            <img src="../image/ddwa.JPG" width="400" />
        </div>
    </div>
     
    
    
     <div class="container-fluid bg-info fixed-bottom">
         <footer>
             <br />
             &copy; <%: DateTime.Now.Year %>-Kamal & Son 
            <br />
             <br />

         </footer>
     </div>


</body>
</html>

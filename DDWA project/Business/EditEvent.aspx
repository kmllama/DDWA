<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditEvent.aspx.cs" Inherits="DDWA_project.Business.EditEvent" %>

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
                   <li class="nav-item">
                    <a class="nav-link" href="../Business/EditImage.aspx">Edit Event </a>
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
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="262px" Width="751px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="event_id" DataSourceID="SqlDataSource1" ForeColor="Black">
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="event_id" HeaderText="Event ID" ReadOnly="True" SortExpression="event_id" />
                            <asp:BoundField DataField="event_name" HeaderText="Event Name" SortExpression="event_name" />
                            <asp:BoundField DataField="event_details" HeaderText="Event Details" SortExpression="event_details" />
                            <asp:BoundField DataField="event_date" HeaderText="Event Date" SortExpression="event_date" />
                            <asp:BoundField DataField="biz_id" HeaderText="B. ID" SortExpression="biz_id" />
                            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_id], [event_name], [event_details], [event_date], [biz_id], [time]) VALUES (@event_id, @event_name, @event_details, @event_date, @biz_id, @time)" SelectCommand="SELECT * FROM [event] WHERE ([biz_id] = @biz_id)" UpdateCommand="UPDATE [event] SET [event_name] = @event_name, [event_details] = @event_details, [event_date] = @event_date, [biz_id] = @biz_id, [time] = @time WHERE [event_id] = @event_id">
                        <DeleteParameters>
                            <asp:Parameter Name="event_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="event_id" Type="Int32" />
                            <asp:Parameter Name="event_name" Type="String" />
                            <asp:Parameter Name="event_details" Type="String" />
                            <asp:Parameter DbType="Date" Name="event_date" />
                            <asp:Parameter Name="biz_id" Type="Int32" />
                            <asp:Parameter Name="time" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtBizID" Name="biz_id" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="event_name" Type="String" />
                            <asp:Parameter Name="event_details" Type="String" />
                            <asp:Parameter DbType="Date" Name="event_date" />
                            <asp:Parameter Name="biz_id" Type="Int32" />
                            <asp:Parameter Name="time" Type="String" />
                            <asp:Parameter Name="event_id" Type="Int32" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addEvent.aspx.cs" Inherits="DDWA_project.Business.addEvent" %>


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
                    <a class="nav-link" href="../Business/EditImage.aspx">Edit Event </a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../MainBusinessPage2.aspx">BizPage</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../Business/addEvent.aspx">Add Event </a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../Business/EditEvent.aspx">Edit Event </a>
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
                <h4><u>Business Registration</u></h4>
                <br />
                <br />
                <form id="registerEvent" runat="server">
            <!--1-->
                    <div class="form-group">
                        <label>Event ID :</label>

                         <asp:Label ID="lblE_id" runat="server" Text=""></asp:Label>
                    </div>
            <!--2-->
                    <div class="form-group">
                        <label>Event Name:</label>

                        <asp:TextBox ID="txtE_name" runat="server" class="form-control" placeholder="Bonga Bonga party, Ester Offer"></asp:TextBox>
                    </div>
            <!--3-->
                    <div class="form-group">
                        <label>Event Details:</label>

                        <asp:TextBox ID="txtE_details" runat="server" class="form-control" placeholder=" Buy one get one free, happy hours, Ester offer or Party venue with list of entertainment " Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
            <!--4-->
                      <div class="form-group">
                        <label>Event Date :</label>

                        <asp:Calendar ID="eventCalender" runat="server" BackColor="#66FFFF" BorderColor="#6666FF" BorderWidth="1px" NextMonthText="Next" PrevMonthText="" ToolTip="Event Date">
                            <SelectedDayStyle BackColor="#666666" />
                            <TitleStyle BackColor="Fuchsia" />
                            <TodayDayStyle BackColor="White" />
                          </asp:Calendar>
                    </div>
                      <div class="form-group">
                        <label>Time:</label>

                        <asp:TextBox ID="txtTime" runat="server" class="form-control" placeholder=" 14:00 PM, 06:00 AM, or 10:00 AM To 05:00 PM" ></asp:TextBox>
                    </div>
            <!--5-->
                     <div class="form-group">
                        <label>Your Business ID :</label>
                          <asp:TextBox ID="TxtBizID" runat="server" class="form-control" placeholder=" Testing..." ReadOnly="True" ></asp:TextBox>
                         <asp:Label ID="lblBiz_id" runat="server" Text=""></asp:Label>
                    </div>
          
                    <br />
                    <asp:Label ID="lblSuccessReg" runat="server" Text=""></asp:Label>
                      <asp:Label ID="lblErrorReg" runat="server" Text=""></asp:Label>
                    <br />
                    <br />

            <asp:Button ID="btnRegisterEvent" runat="server" Text="Create Event" class="btn btn-default" Style="border-color: #000000" OnClick="btnRegisterEvent_Click" />
                 
                    
           
                &nbsp;    <asp:Button ID="btnComplete" runat="server" Text="Finished " class="btn btn-default" Style="border-color: #000000" OnClick="btnComplete_Click" Width="164px" Height="40px" /></form>
        </div>            
       
        <div class="col-md-4">
            <img src="../image/ddwa.JPG" width="400" />
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


</body>
</html>







<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterBusiness.aspx.cs" Inherits="DDWA_project.Business.RegisterBusiness" %>


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
                <h4><u>Business </u></h4>
                <br />
                <br />
                <form id="RegisterForm" runat="server">
                    <div class="form-group">
                        <label for="username">Biz ID:</label>
                        <!--1-->
                        <asp:TextBox ID="txtBizId" runat="server" class="form-control" placeholder="Business Id" ReadOnly="True"></asp:TextBox>
                    </div>
                    <!--2-->
                    <div class="form-group">

                        <label>Create Password:</label>

                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                    </div>
                    <!--3-->
                    <div class="form-group">
                        <label>Business Name:</label>

                        <asp:TextBox ID="txtBizName" runat="server" class="form-control" placeholder="Business Name">  </asp:TextBox>
                    </div>
                    <!--4-->
                    <div class="form-group">
                        <label>Owner / Business Head:</label>

                        <asp:TextBox ID="txtOwnerName" runat="server" class="form-control" placeholder="Name Owner">  </asp:TextBox>
                    </div>

                    <!--5-->
                    <div class="form-group">
                        <label>Business Type: </label>

                        <asp:DropDownList ID="txtBusinessType" class="form-control" runat="server">
                            <asp:ListItem>Restaurant</asp:ListItem>
                            <asp:ListItem>Grocories</asp:ListItem>
                            <asp:ListItem>Cab Hire</asp:ListItem>
                            <asp:ListItem>Hair&amp;Beautiy</asp:ListItem>
                            <asp:ListItem>Fast Food</asp:ListItem>
                            <asp:ListItem>Pub &amp; Bar</asp:ListItem>
                            <asp:ListItem>Bakery </asp:ListItem>
                            <asp:ListItem>Cafe</asp:ListItem>
                            <asp:ListItem>Home Tuition</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!--6-->
                    
                    <!--7-->
                    <div class="form-group">
                        <label>Address 1</label>

                        <asp:TextBox ID="txtAdd1" runat="server" class="form-control" placeholder="Address 1">  </asp:TextBox>
                    </div>
                    <!--8-->
                    <div class="form-group">
                        <label>Town</label>

                        <asp:TextBox ID="txtTown" runat="server" class="form-control" placeholder="Town">  </asp:TextBox>
                    </div>
                    <!--9-->
                    <div class="form-group">
                        <label>Area:</label>

                        <asp:TextBox ID="txtArea" runat="server" class="form-control" placeholder="Area">  </asp:TextBox>
                    </div>
                    <!--10-->
                    <div class="form-group">
                        <label>City :</label>

                        <asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="City">  </asp:TextBox>
                    </div>
                    <!--11-->
                    <div class="form-group">
                        <label>Post Code</label>

                        <asp:TextBox ID="txtPostCode" runat="server" class="form-control" placeholder="Postal Or Zip Code">  </asp:TextBox>
                    </div>
                    <!--12-->
                    <div class="form-group">
                        <label>Country :</label>

                        <asp:TextBox ID="txtCountry" runat="server" class="form-control" placeholder="Country">  </asp:TextBox>
                    </div>
                    <!--13-->
                    <div class="form-group">
                        <label>Contact :</label>

                        <asp:TextBox ID="txtContactP" runat="server" class="form-control" placeholder="Phone" TextMode="Number"></asp:TextBox>
                    </div>
                    <!--14-->
                    <div class="form-group">
                        <label>Contact 2:</label>

                        <asp:TextBox ID="txtContactM" runat="server" class="form-control" placeholder="Mobile" TextMode="Number"></asp:TextBox>
                    </div>
                    <!--15-->
                    <div class="form-group">
                        <label>Businee Email:</label>

                        <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                    </div>
                    <!--16-->
                    <div class="form-group">
                        <label>Website Address:</label>

                        <asp:TextBox ID="txtWebAdd" runat="server" class="form-control" placeholder="Domain"></asp:TextBox>
                    </div>
                    <!--17-->
                    <div class="form-group">
                        <label>Social Media Link:</label>

                        <asp:TextBox ID="txtSoicalLink" runat="server" class="form-control" placeholder="Social Link (eg: facebook address)">  </asp:TextBox>
                    </div>
                    <!--18-->
                    <div class="form-group">
                        <label>About Us :</label>

                        <asp:TextBox ID="txtAbout" runat="server" class="form-control" placeholder="About the Business" Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
            <!--19-->
                    <div class="form-group">
                        <label>Description :</label>

                        <asp:TextBox ID="txtDescription" runat="server" class="form-control" placeholder="Detail of Information " Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
            <!--20-->
                    <div class="form-group">
                        <label>History (Optional):</label>

                        <asp:TextBox ID="txtHistory" runat="server" class="form-control" placeholder="History of business" Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
            <!--21-->
                    <div class="form-group">
                        <label>Service Offer:</label>

                        <asp:TextBox ID="txtService" runat="server" class="form-control" placeholder="Service (eg: List of Service with bullet point or with Number) " Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
            <!--22-->
                     <div class="form-group">
                        <label>Working Hour:</label>

                        <asp:TextBox ID="txtOpeningTime" runat="server" class="form-control" placeholder="Working Hours Day and Time" Height="246px" TextMode="MultiLine">  </asp:TextBox>
                    </div>
            <!--23-->
                     <div class="form-group">
                        <label>Additonal Information /Notes.. :</label>

                        <asp:TextBox ID="txtAdditional" runat="server" class="form-control" placeholder="Menu or List " Height="246px" TextMode="MultiLine"></asp:TextBox>
                    </div>
          
                    <br />
                    <asp:Label ID="lblSuccess" runat="server" ForeColor="#00CC99"></asp:Label>
                    <asp:Label ID="lblError" runat="server" ForeColor="#CC00CC"></asp:Label>
                    <br />
                    <br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-default" Style="border-color: #000000" OnClick="btnRegister_Click" />
                 
                    
           
                &nbsp;    <asp:Button ID="btnNext" runat="server" Text="Sign In" class="btn btn-default" Style="border-color: #000000" OnClick="btnNext_Click" Width="105px" /></form>
        </div>            
       
        <div class="col-md-4">
            <img src="../image/ddwa.JPG" width="400" class="img-fluid"/>
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






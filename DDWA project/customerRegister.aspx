﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerRegister.aspx.cs" Inherits="DDWA_project.customerRegister" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Customer Login</title>
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
                    <a class="nav-link" href="../explorer.aspx">Explore</a>
                </li>
                <!-- dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Register</a>
                    <div class="dropdown-menu">
                        <a href="../Business/RegisterBusiness.aspx" class="dropdown-item">Business</a>
                        <a href="../customerRegister.aspx" class="dropdown-item">Customer</a>
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
    <!--Customer Register System-->



    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h4><u>Customer Registration Form</u></h4>
                <br />
                <br />
                <form id="registerCustomer" runat="server">
                    <div class="form-group">
                        <label for="customerId">Customer ID:</label>

                        <asp:TextBox ID="txtc_Id" runat="server" class="form-control" placeholder=""></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="customerUser">User Name:</label>

                        <asp:TextBox ID="txtCuser_name" runat="server" class="form-control" placeholder="kamal,jhon22"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="customeremail">Customer Email:</label>

                        <asp:TextBox ID="txtC_Email" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pass">Password:</label>

                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter password">  </asp:TextBox>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="remember">
                            Remember me</label>
                    </div>
                    <asp:Button ID="btnCregister" runat="server" Text="Register" class="btn btn-default" Style="border-color: #000000" OnClick="btnCReg_Click" />

                    <br />
                    <asp:Label ID="lblSuccess" runat="server" Text=""></asp:Label>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </form>
            </div>

            <br />


            <div class="col-md-4">
                <img src="../image/ddwa.JPG" width="400" />
            </div>
        </div>




    </div>
    <div class="container-fluid bg-info fixed-bottom">
        <footer>
            <br />
            &copy; <%: DateTime.Now.Year %> -Kamal & Son 
            <br />
            <br />

        </footer>
    </div>


</body>
</html>




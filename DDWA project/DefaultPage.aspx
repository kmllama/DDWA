﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="DDWA_project.DefaultPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            width: 299px;
            height: 269px;
        }

        .auto-style2 {
            width: 302px;
            height: 271px;
        }

        .auto-style3 {
            width: 300px;
            height: 272px;
        }

        .auto-style11 {
            width: 313px;
        }
        .auto-style12 {
            width: 304px;
        }
        .auto-style13 {
            max-width: 100%;
            height: 746px;
            width: 2061px;
        }
        .auto-style21 {
            width: 83%;
            color: #212529;
            border-collapse: collapse;
            height: 449px;
            margin-bottom: 1rem;
        }
        .auto-style22 {
            width: 37px;
            height: 33px;
        }
        .auto-style23 {
            width: 1203px;
        }
        .auto-style24 {
            text-align: left;
            width: 314px;
        }
    </style>

</head>
<body>
    <div class="container-fluid">
        <nav class="navbar navbar-expand-md bg-info navbar-dark">
            <a class="navbar-brand" href="#"><b>DDWA</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link accordion" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../About.aspx">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Contact.aspx">Cotact Us</a>
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
       
        
        <div id="demo" class="carousel slide" data-ride="carousel">
             <table class="auto-style23"><tr class="text-center">
            <td class="auto-style24">
               <strong>  Search Local Business Near You</strong>
            </td>
            <td class="text-left">
                 <a href="../explorer.aspx "><img src="image/searchIcon.JPG" class="auto-style22" /></a>
            </td>

               </tr></table>
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active" style="text-align: center">
                    <img src="image/img1.jpg" alt="house"  height="500" width="1920" class="img-fluid">
                </div>
                <div class="carousel-item" style="text-align: center">
                    <img src="image/img2.jpg" alt="Chicago" height="500" width="1920"class="img-fluid">
                </div>
                <div class="carousel-item" style="text-align: center">
                    <img src="image/img3.jpg" alt="New York" height="500" width="1920" class="img-fluid">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
            <br />
            <br />
        </div>
        <div class="container-fluid">
            <div class="row ">
                <div class="col-md-7">

                    <table class="auto-style21">
                        <tr>
                            <td>
                               <a href="../explorer.aspx"> <img src="image/Event.jpg" class="auto-style1" height="270" width="300" /></a></td>


                            <td>
                                <img src="image/flat.jpg" height="270" class="auto-style11" />

                            </td>

                            <td class="auto-style12">
                                <img src="image/constructor.jpg" class="auto-style2" /></td>

                        </tr>
                        <tr>
                           
                            <td>
                                <img src="image/attraction.jpg" height="270" width="300" />
                            </td>
                             <td>
                                <img src="image/rent-cab.jpg" class="auto-style3" />
                            </td>
                            <td class="auto-style12">
                               <a href="../restaurantExplorer.aspx"> <img src="image/groceries.jpg" height="270" width="300" /> </a></td>
                        </tr>
                    </table>
                </div>
                <div class="col-sm-1">

                </div>
                <div class="col-md-4">
               

                    <b><u>What is DDWA for Business</u></b>
                    <ul>
                        <li>Digital Directory Web Application </li>
                        <li>DDWA is built to help every business to do marketing of their business.</li>
                        <li>Marketing Under £100 </li>
                        <li>Find potential customers with out spending time and cost</li>
                        <br />

                    </ul>
                    <br />
                    <b><u>What is DDWA for Customer</u></b>
                    <ul>
                        <li>Customer can find best vendor and service near by.</li>
                        <li>See the review and choose the best one.</li>
                        <li>Find the event near by to enjoy you time.</li>
                    </ul>
                </div>
                   
            </div>
           
    <div>
         
    <!--row closing div-->
        
        </div>
         </div>
            <br />
      
            <br />
        <p> </p>
    <div class="container-fluid bg-info fixed-bottom">
        <footer>
            <br />
            &copy; <%: DateTime.Now.Year %> -Kamal & Son 
            <br />
            <br />

        </footer>
    </div>
    </div>
</body>

</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="DDWA_project.DefaultPage" %>

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
        <a class="nav-link" href="DefaultPage.aspx">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact.aspx">Cotact Us</a>
      </li>    
        <li class="nav-item">
        <a class="nav-link" href="#">Explore</a>
      </li> 
         <!-- dropdown -->
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Register</a>
              <div class="dropdown-menu">
                  <a href="Business/RegisterBusiness.aspx" class="dropdown-item">Business</a>
                  <a href="Customer/customerRegister.aspx" class="dropdown-item">Customer</a>
              </div>
      </li> 
         <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Sign In</a>
             <div class="dropdown-menu">
                 <a href="Business/businessLogin.aspx" class="dropdown-item">Business</a>
                 <a href="Customer/customerLogin.aspx" class="dropdown-item">Customers</a>
             </div>            
      </li> 
         <!--https://www.youtube.com/watch?v=pkIqgB3fH70&list=PLbGui_ZYuhij_HswuaGK-ABs1vfC5HTKn&index=58--> 
    </ul>

     </div>  
</nav>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <b><u>About Us & Goal</u></b>
            <p> The aim of this project is to help small and medium business to reach in potential customers through internet service as well as it has lots of social and individual benefits which
                courage developer to develop this project such as discouraging to use of papers advertise, helping to thriving small and medium business by advertising to related potential customers, help freelance and
                individual who works as self-employed, easy approach on business marketing or introducing service through internet for less technical involve company which could create good impact on society by helping
                to sustain their business in the competitive market on the other hand developer can generate income through the advertisement and create work for people.</p><br />
            <p>In this digital age there are growing number of business to go digitalize to sustain in competitive market. To introduce business, businesses are using different kind of digital marketing media such as
                YouTube, Facebook, Twitter, Google etc. This project is aiming to fill the gap between World Wide Web service and non-technical business users. Introducing business from websites is still complicated but 
                it is important part of business and there are very less but expensive website or no any directory website nor social media which full fill all the business users required function or services. Thus, 
                the creation of ‘Digital Directory Web Application’ (DDWA henceforth) will provide platform to introduce business and help to marketing the business</p>
        </div>
          <div class="col-md-4">
              <img src="image/ddwa.JPG" width="400" />
              </div>
    </div>

    
</div>
     <div class="container-fluid bg-info fixed-bottom">
        <footer>
            <br />
               &copy; -Kamal & Son 
            <br />
            <br />
            
            </footer>
            </div>


</body>
</html>

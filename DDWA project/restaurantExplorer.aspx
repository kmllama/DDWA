<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="restaurantExplorer.aspx.cs" Inherits="DDWA_project.restaurantExplorer" %>

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
        .auto-style12 {
            width: 12px;
        }
        .auto-style17 {
            left: 0;
            right: -30px;
            bottom: 356px;
        }
        .auto-style18 {
            width: 145px;
        }
        .auto-style19 {
            text-align: center;
            height: 71px;
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
        <a class="nav-link" href="DefaultPage.aspx">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Contact.aspx">Contact Us</a>
      </li>    
        <li class="nav-item">
        <a class="nav-link" href="#">Explore</a>
      </li> 
         <!-- dropdown -->
          <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Register</a>
              <div class="dropdown-menu">
                  <a href="Business/RegisterBusiness.aspx" class="dropdown-item">Business</a>
                  <a href="../customerRegister.aspx" class="dropdown-item">Customer</a>
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
<div class="container container-fluid">
 <form id="details" runat="server">
     <div class="container-fluid">
         <table class="active">
             <tr>
                 <td>
                     &nbsp;</td>
                 <td class="auto-style12"> </td>
                
             </tr>
         </table>
     </div>
     <div class="container container-fluid">
     <asp:DataList ID="DataListBusiness" runat="server" DataKeyField="biz_id" DataSourceID="SqlDataSource1" OnItemCommand="DataListBusiness_ItemCommand" Height="200px" RepeatDirection="Horizontal" Width="362px">
         <ItemTemplate>
             <br />
             <table class="auto-style2" style="border: thin solid #000000; background-color: #CCCCFF; border-spacing: inherit; empty-cells: hide; caption-side: top; border-collapse: collapse;">
                 <tr>
                     <td class="text-center" colspan="2">
                         <asp:Label ID="Label1" runat="server" Font-Size="Small" Text='<%# Eval("b_name") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-left" colspan="2">
                         <asp:Image ID="Image1" runat="server" Height="216px" ImageUrl='<%# Eval("image1") %>' Width="319px" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style15" style="border: thin solid #000000">Business</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("b_type") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16" style="border: thin solid #000000">City</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style10" style="border: thin solid #000000">Town</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("town") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style16" style="border: thin solid #000000">Post Code</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("post_code") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style15" style="border: thin solid #000000">Contact:</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("contact_phone") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style15" style="border: thin solid #000000">ID</td>
                     <td class="auto-style18" style="border: thin solid #000000">
                         <asp:Label ID="id" runat="server" Text='<%# Eval("biz_id") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style19" colspan="2">
                         <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("biz_id")%>' CommandName="viewDetails" Height="47px" OnClick="Button1_Click" Text="View Business" Width="167px" />
                     </td>
                 </tr>
             </table>
             <br />
         </ItemTemplate>
         </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ddwaConnectionString %>" SelectCommand="SELECT DISTINCT business_details.biz_id, business_details.b_name, business_details.b_type, business_details.town, business_details.city, business_details.area, business_details.post_code, business_details.contact_phone, image.image1 FROM business_details INNER JOIN image ON business_details.biz_id = image.biz_id WHERE (business_details.b_type = 'Restaurant')">
         </asp:SqlDataSource>
         <br />
         <br />
     </div>
 </form>  
    <br />
    <br />
 </div>
     <div class="auto-style17">
        <footer>
            <br />
               &copy; -Kamal & Son 
            <br />
            <br />
            
            </footer>
            </div>


</body>
</html>
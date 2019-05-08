<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="DDWA_project.uploadImage" %>

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
                    <a class="nav-link" href="../explorer.aspx">Explore</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="../Business/BusinessPage.aspx">Edit Details</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="#">upload Image</a>
                </li>                 
                 <li class="nav-item">
                    <a class="nav-link" href="../myPage.aspx">View Page</a>
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
    <div class="text-right">
    <!--Login System-->   
   
    <br />

    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h4><u>Upload Image</u></h4>
                <br />
                <br />
                <form id="RegisterForm" runat="server">
                    <div class="text-right">    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
      
    </div>
                     <div class="form-group">
                                                                       
                         <asp:Label ID="txtMember" runat="server" Text=""></asp:Label>
                        
                    </div>
                      <div class="form-group">
                          
                        <label>Image ID</label>
                          
                        <asp:TextBox ID="txtId" runat="server" CssClass="form-control" ></asp:TextBox>
                        
                    </div>
                     <!--1-->
                    <div class="form-group">
                        <label>Logo</label>

                          <asp:FileUpload ID="FileLogo" runat="server" class="form-control"/>
                    </div>
            <!--2-->
                     <div class="form-group">
                        <label>Image 1</label>

                          <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
                    </div>
            <!--3-->
                    <div class="form-group">
                        <label>Image 2</label>

                          <asp:FileUpload ID="FileUpload2" runat="server" class="form-control"/>
                    </div>
            <!--4-->
                    <div class="form-group">
                        <label>Image 3</label>

                          <asp:FileUpload ID="FileUpload3" runat="server" class="form-control"/>
                    </div>
                     <!--5-->
                    <div class="form-group">
                        <label>Biz_Id</label>

                        <asp:TextBox ID="txtb_id" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </div>

                             
                    <br />
                    <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <br />
                    <br />

            <asp:Button ID="btnUpload" runat="server" Text="Upload" class="btn btn-default" Style="border-color: #000000" OnClick="btnUpload_Click" />
                     &nbsp;&nbsp;</form>
        </div>
            
        <br />


        <div class="col-md-4">
            <img src="../image/ddwa.JPG" width="400" />
        </div>
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server">View All Image</asp:HyperLink>

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






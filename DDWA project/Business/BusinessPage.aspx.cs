using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project.Business
{
    public partial class BusinessPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //this code is link with login : source https://www.youtube.com/watch?v=F7mmzhFXugM 19:00 min video
            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            lblid.Text = Session["biz_id"].ToString();
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
           
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../DefaultPage.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project
{
    public partial class myPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            //lblid.Text = Session["biz_id"].ToString();
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Business/BusinessPage.aspx");
        }
    }
}
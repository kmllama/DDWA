using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project
{
    public partial class EditImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            txtBizID.Text = Session["biz_id"].ToString();
        }
    }
}
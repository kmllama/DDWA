using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project.Customer
{
    public partial class CustomerPageaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["c_id"] == null)
                Response.Redirect("~/Customer/customerLogin.aspx");
            txtuserName.Text= "Customer:" + Session["c_id"];
        }
    }
}
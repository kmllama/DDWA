using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project
{
    public partial class restaurantExplorer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void DataListBusiness_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "viewDetails")
            {
                Response.Redirect("MainBusinessPage.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}
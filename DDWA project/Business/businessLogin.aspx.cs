using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project.Business
{
    public partial class businessLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-8O10GQV\KMLMONK;Initial Catalog=ddwa;Persist Security Info=True;User ID=sa;Password=mad2dhan"))
            {
                //source:https://www.youtube.com/watch?v=F7mmzhFXugM&t=856s
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM business_details WHERE biz_id=@biz_id AND b_password=@b_password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@biz_id", txtUserId.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@b_password", password.Text.Trim());
               
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["biz_id"] = txtUserId.Text.Trim();
                    Response.Redirect("~/Business/BusinessPage.aspx");

                }
                
                else
                {
                    lblError.Text = "Please Inseart valid user name password.";
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace DDWA_project.Business
{
    public partial class RegisterBusiness : System.Web.UI.Page
    {
        static int b_Id;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            getid();

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

           
            //try
            //{


            
                string query = "Insert Into business_details(biz_id,b_password,b_name,owner_name,b_type,address1,town,area,city,post_code,country,contact_phone,contact_mobile,b_email,b_weblink,b_social_site,about_us,b_description,b_history,b_opening_time,additional,service_available) VALUES (" + txtBizId.Text.Trim() + ", '" + txtPassword.Text.Trim() + "', '" + txtBizName.Text + "', '" + txtOwnerName.Text + "', '" + txtBusinessType.Text + "','" + txtAdd1.Text + "', '" + txtTown.Text + "', '" + txtArea.Text + "', '" + txtCity.Text + "', '" + txtPostCode.Text + "', '" + txtCountry.Text + "', '" + txtContactP.Text + "', '" + txtContactM.Text + "', '" + txtemail.Text + "', '" + txtWebAdd.Text + "', '" + txtSoicalLink.Text + "', '" + txtAbout.Text + "', '" + txtDescription.Text.Trim() + "', '" + txtHistory.Text.Trim() + "','" + txtOpeningTime.Text.Trim() + "','" + txtAdditional.Text.Trim() + "','" + txtService.Text.Trim()+ "')";

                SqlCommand cmd = new SqlCommand(query);

                String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                lblSuccess.Text = "Data has been registered... please Sign in to upload Image and other Details";
                con.Close();
            //}

            //catch
            //{
            //    lblError.Text = "Please Check the input value and click Register";
            //}

        }
           

        
        public void getid()
        {
            String con = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection Newcon = new SqlConnection(con);
            String bquery = "select biz_id from business_details";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = bquery;
            cmd.Connection = Newcon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            Newcon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
               txtBizId.Text = "1001";
                b_Id = 1001;

            }
            else
            {

                String con2 = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                SqlConnection scon1 = new SqlConnection(con2);
                String myquery1 = "select max(biz_id) from business_details";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                txtBizId.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt32(txtBizId.Text);
                a = a + 1;
                b_Id = a;
                txtBizId.Text = a.ToString();
                scon1.Close();
            }

        }

        protected void btnNextImg1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Business/businessLogin.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDWA_project
{
    public partial class customerRegister : System.Web.UI.Page
    {
        static int c_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            getidno();
        }

        protected void btnCReg_Click(object sender, EventArgs e)
        {
            string query = "Insert Into customer (c_id,c_username,c_user_email,c_password) VALUES ( " + txtc_Id.Text + ", '" + txtCuser_name.Text + "', '" + txtC_Email.Text + "', '" + txtPassword.Text + "')";

            SqlCommand cmd = new SqlCommand(query);
           
            String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            lblSuccess.Text = "Registration submit Successfully";
            con.Close();

        }
        public void getidno()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select c_id from customer";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                txtc_Id.Text = "101";
                c_id = 101;

            }
            else
            {

                String mycon1 = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(c_id) from customer";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                txtc_Id.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(txtc_Id.Text);
                a = a + 1;
                c_id = a;
                txtc_Id.Text = a.ToString();
                scon1.Close();
            }

        }
    }
}
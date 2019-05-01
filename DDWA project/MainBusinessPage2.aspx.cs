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
    public partial class MainBusinessPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            lblBusinessID.Text = ""+Session["biz_id"];
           
            //    //https://drive.google.com/file/d/1ijr3Eol9vHA_Pd-LvfSBxlSEJ6NDHCZL/view  : code
            //    //https://www.youtube.com/watch?v=UjDqv1XbWzo video

            String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;

            String myquery = "select image.logo,image.image1, business_details.b_name,business_details.owner_name,business_details.biz_id from image, business_details where business_details.biz_id =" +lblBusinessID.Text.Trim();
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                imgLogo.ImageUrl = ds.Tables[0].Rows[0]["logo"].ToString();
                Img1.ImageUrl = ds.Tables[0].Rows[0]["image1"].ToString();
                //Label4.Text = TextBox1.Text;
                lblBname.Text = ds.Tables[0].Rows[0]["b_name"].ToString();
                lblBusinessID.Text = ds.Tables[0].Rows[0]["biz_id"].ToString();
                lblOwner.Text = ds.Tables[0].Rows[0]["owner_name"].ToString();


            }
            else
            {
                lblerror.Text = "Data Not Found";

            }
            con.Close();

        }
    }
}

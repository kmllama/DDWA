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

namespace DDWA_project
{
    public partial class uploadImage : System.Web.UI.Page
    {
        static int image_id;

        //https://www.youtube.com/watch?v=D2nehcXbaSQ&t=970s

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            txtMember.Text = "Member :" + Session["biz_id"];
            txtb_id.Text = Session["biz_id"].ToString();
            getidno();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }

        public void getidno()
        {
            try
            {
                String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                SqlConnection scon = new SqlConnection(mycon);
                String myquery = "select s_no from image";
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
                    txtId.Text = "101";
                    image_id = 101;

                }
                else
                {

                    String mycon1 = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                    SqlConnection scon1 = new SqlConnection(mycon1);
                    String myquery1 = "select max(s_no) from image";
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = myquery1;
                    cmd1.Connection = scon1;
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    txtId.Text = ds1.Tables[0].Rows[0][0].ToString();
                    int a;
                    a = Convert.ToInt16(txtId.Text);
                    a = a + 1;
                    image_id = a;
                    txtId.Text = a.ToString();
                    scon1.Close();
                }
            }
            catch
            {

            }

        }
        private void savedata(int image_id, String logo, String image1, String image2, String image3, int biz_id)
        {
             String updatepass = "insert into image(s_no,logo,image1,image2,image3,biz_id) values('" + txtId.Text + "','" + logo + "','" + image1 + "','" + image2 + "','" + image3 + "','" + txtb_id.Text + "')";
            String mycon1 = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection scon = new SqlConnection(mycon1);
            scon.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = scon;
            cmd1.ExecuteNonQuery();
            scon.Close();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            String fileextension;
            String photoname;
            String logo = "";
            String image1 = "";
            String image2 = "";
            String image3 = "";

            HttpFileCollection hfc = Request.Files;
            for (int i = 0; i < hfc.Count; i++)
            {
                HttpPostedFile hpf = hfc[i];
                if (hpf.ContentLength > 0)
                {
                    fileextension = Path.GetExtension(hpf.FileName);
                    photoname = image_id + "" + i + fileextension;

                    hpf.SaveAs(Server.MapPath("../UploadedImages") + "\\" + photoname);
                    if (i == 0)
                    {
                        logo = "UploadedImages\\" + photoname;
                    }
                    if (i == 1)
                    {
                        image1 = "UploadedImages\\" + photoname;
                    }
                    if (i == 2)
                    {
                        image2 = "UploadedImages\\" + photoname;
                    }
                    if (i == 3)
                    {
                        image3 = "UploadedImages\\" + photoname;
                    }
                }
            }
            savedata(image_id, logo, image1, image2, image3, Convert.ToInt32(txtb_id.Text));
            lblSuccess.Text = "Data Has Been Saved Successfully";
            getidno();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../DefaultPage.aspx");
        }
    }
    //https://www.youtube.com/watch?v=D2nehcXbaSQ&t=970s
}
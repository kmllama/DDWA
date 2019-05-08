using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DDWA_project.Business
{
    public partial class addEvent : System.Web.UI.Page
    {
        static int eventId;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["biz_id"] == null)
                Response.Redirect("~/Business/businessLogin.aspx");
            TxtBizID.Text = Session["biz_id"].ToString();
            getEventId();
        }
        
        protected void btnRegisterEvent_Click(object sender, EventArgs e)
        {
            string query = "Insert Into event (event_id,event_name,event_details,event_date,time,biz_id) VALUES ( " + lblE_id.Text + ", '" + txtE_name.Text + "', '" + txtE_details.Text + "', '" + eventCalender.SelectedDate.ToLongDateString() +"','" + txtTime.Text + "','" + TxtBizID.Text + "')";

            SqlCommand cmd = new SqlCommand(query);

            String mycon = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            lblSuccessReg.Text = "Event Registered ";
            con.Close();
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {

        }

        public void getEventId()
        {
            String con = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
            SqlConnection Newcon = new SqlConnection(con);
            String bquery = "select event_id from event";
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
                lblE_id.Text = "10001";
                eventId = 10001;

            }
            else
            {

                String con2 = ConfigurationManager.ConnectionStrings["ddwaConnectionString"].ConnectionString;
                SqlConnection scon1 = new SqlConnection(con2);
                String myquery1 = "select max(event_id) from event";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                lblE_id.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt32(lblE_id.Text);
                a = a + 1;
                eventId = a;
                lblE_id.Text = a.ToString();
                scon1.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../DefaultPage.aspx");
        }
    }
}
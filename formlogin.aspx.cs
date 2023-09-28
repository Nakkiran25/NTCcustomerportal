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

namespace NTCcustomerportal

{
    public partial class formlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);



        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = text_uid.Text;
                string pass = text_pwd.Text;
                con.Open();
                string qry = "Select * from ntc_user_tbl where CustomerCode='" + uid + "' and Adminpassword='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["text_uid"] = "CustomerCode";
                    Response.Redirect("cusportal.aspx");
               
                }
                else
                {
                    Response.Write("<script>alert('InValid User');</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgetpassword.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}

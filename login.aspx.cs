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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
            
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_ntc_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerCode", txt_uid.Text);
                cmd.Parameters.AddWithValue("@Adminpassword", text_pwd.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
               int k = cmd.ExecuteNonQuery();
              
                if (k > 0) 
                {
                   Session["id"] = txt_uid.Text;
                   Response.Write("<script language='javascript'>window.alert('Registered Succcesfully');window.location='formlogin.aspx';</script>");
                   Session.RemoveAll();
                }
                else
                {

                }
                 con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
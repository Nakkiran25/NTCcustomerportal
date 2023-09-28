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
    public partial class forgetpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);



        protected void Page_Load(object sender, EventArgs e)
        {

            
        }


        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Getdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerCode", txt_uid.Text);
                cmd.Parameters.AddWithValue("@SecurityQuestions", Txt_sec.Text);
                cmd.Parameters.AddWithValue("@SecurityAnswer", Txt_ans.Text);
                cmd.Parameters.AddWithValue("@Adminpassword", txt_cnf.Text);
                int k = cmd.ExecuteNonQuery();
                if (k > 0)
                {
                    Response.Write("<script>alert('Updated Succcesfully');</script>");
                   
                }
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connString))
            {
                con.Open();
                String strSQL = "SELECT CustomerCode,SecurityQuestions,SecurityAnswer FROM ntc_user_tbl where  CustomerCode = @CustomerCode";
                using (SqlCommand cmd = new SqlCommand(strSQL, con))
                {
                    cmd.Parameters.Add("@CustomerCode", SqlDbType.VarChar).Value = txt_uid.Text;
                    using (SqlDataAdapter DA = new SqlDataAdapter(cmd))
                    {  
                        DA.SelectCommand = cmd;

                        try
                        {
                         DataSet DS = new DataSet();
                            DA.Fill(DS);
                                foreach (DataRow row in DS.Tables[0].Rows)
                                {
                                 Txt_sec.Text = row["SecurityQuestions"].ToString();
                                }
                        }
                        catch (Exception)
                        {

                        }

                    }
                }

            }
        }

        protected void Login_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("formlogin.aspx");
        }
    }


}


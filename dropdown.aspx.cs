using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace NTCcustomerportal
{
    public partial class dropdown : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                   if (!Page.IsPostBack)
                   {

                      SqlCommand cmd = new SqlCommand("Select * from vstatus_1", con);
                      SqlDataAdapter sda = new SqlDataAdapter(cmd);
                      DataTable dt = new DataTable();
                      sda.Fill(dt);
                      DropDownList1.DataSource = dt;
                      DropDownList1.DataBind();

                   }
            }

        
            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Select Status");

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select * from vstatus_2 where Status1 =" + DropDownList1.SelectedItem.Value, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
               
        
            }

            protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
            {
     
                DropDownList3.Items.Clear();
                DropDownList3.Items.Add("Select Status");

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select * from vstatus_3 where Status1 =" + DropDownList2.SelectedItem.Value, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataBind();
            }

        
    }
}
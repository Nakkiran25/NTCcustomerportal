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
    public partial class cusportal : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                
            //    string text_uid = Session["CustomerCode"] as string;

            //    // Fetch and display details for the logged-in user
            //    if (text_uid != null)
            //    {
            //        Txtcon.Text = Session["CustomerCode"] as string;
            //        // Fetch user-specific details from the database based on userId
            //        // Display the details on the page
            //    }
            //    else
            //    {
            //        // Handle the case where the user is not logged in
            //    }
            //}

        }
        
        protected void Btntrack_Click1 (object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            string query = "Select * from ntc_customer_dispatch_track_details_view_tmp WHERE Consignment_No = @Trackno";
            SqlCommand cmd = new SqlCommand(query, con);
           
            cmd.Parameters.AddWithValue("@Trackno", Txtcon.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read() == true)
            {
                sts.Text = reader["Status"].ToString();
                date.Text = reader["Consignment_Date"].ToString();
                track_no.Text = reader["Consignment_No"].ToString();
                pickup.Text = reader["Pickup_location"].ToString();
                delivery.Text = reader["Delivery_location"].ToString();
                order_confirmed.Text = reader["Order_Confirmed_Date"].ToString();
                Label8.Text = reader["Pickup_planned_date"].ToString();
                Label10.Text = reader["Loading_indate"].ToString();
                Label13.Text = reader["Loading_outdate"].ToString();
                Label12.Text = reader["Last_Communicated_location"].ToString();
                Label15.Text = reader["Delivery_planned_date"].ToString();
                Label18.Text = reader["Unloading_Outdate"].ToString();
             


            }
            else
            {
                sts.Text = "No Status found";
                track_no.Text = "No Consignmentno found";
                Response.Write("<script>alert('No Consignmentno found');</script>");


            }

              if (sts.Text == "Order Confirmed")
              {
                divOrderconfirmed.Attributes["class"] = "step completed";
              }
       
            
            if (sts.Text == "Delivery Departured")
            {
                divOrderconfirmed.Attributes["class"] = "step completed";
                divPickuparrived.Attributes["class"] = "step completed";
                divPickupdepartured.Attributes["class"] = "step completed";
                divIntransit.Attributes["class"] = "step completed";
                divDeliveryarrived.Attributes["class"] = "step completed";
                divDeliverydepartured.Attributes["class"] = "step completed";
            }
            if (sts.Text == "Pickup Arrived")
            {
                divOrderconfirmed.Attributes["class"] = "step completed";
                divPickuparrived.Attributes["class"] = "step completed";

            }

            if (sts.Text == "Pickup Departured")
            {
                divOrderconfirmed.Attributes["class"] = "step completed";
                divPickuparrived.Attributes["class"] = "step completed";
                divPickupdepartured.Attributes["class"] = "step completed";

            }
            if (sts.Text == "Intransit")
            {
                divOrderconfirmed.Attributes["class"] = "step completed";
                divPickuparrived.Attributes["class"] = "step completed";
                divPickupdepartured.Attributes["class"] = "step completed";
                divIntransit.Attributes["class"] = "step completed";

            }

            if (sts.Text == "Delivery Arrived")
            {
                divOrderconfirmed.Attributes["class"] = "step completed";
                divPickuparrived.Attributes["class"] = "step completed";
                divPickupdepartured.Attributes["class"] = "step completed";
                divIntransit.Attributes["class"] = "step completed";
                divDeliveryarrived.Attributes["class"] = "step completed";

            }
            reader.Close();
       
          
            
        con.Close();
        }
    }  

    
}




using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class truckopen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void openButton_Click(object sender, EventArgs e)
    {
        //open db connection
        SqlConnection con = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        con.Open();


        SqlCommand updateLocation = new SqlCommand("update dbo.[truck] set location=@location where ownerEmail=@ownerEmail", con);
        updateLocation.Parameters.AddWithValue("@location", openAddress.Text);
        updateLocation.Parameters.AddWithValue("@ownerEmail", Session["sessionOwnerEmail"]);
        updateLocation.ExecuteNonQuery();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your location has been updated!')){document.location = 'truckdashboard.aspx'}</script>");
        //Response.Redirect("truckdashboard.aspx");


    }
}
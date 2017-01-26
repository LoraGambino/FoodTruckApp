using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class editInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void updateBio_Click(object sender, EventArgs e)
    {
        //Opens a database connection
        SqlConnection con = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        con.Open();

        //update the bio for the truck that is signed in (via session variable)
        SqlCommand updateInfo = new SqlCommand("update dbo.[truck] set truckBio=@truckBio,facebook=@truckFacebook, twitter=@truckTwitter, instagram=@truckInsta where ownerEmail=@ownerEmail", con);
        updateInfo.Parameters.AddWithValue("@truckBio", editBioTB.Text);
        updateInfo.Parameters.AddWithValue("@truckFacebook", editFacebook.Text);
        updateInfo.Parameters.AddWithValue("@truckTwitter", editTwitter.Text);
        updateInfo.Parameters.AddWithValue("@truckInsta", editInsta.Text);

        updateInfo.Parameters.AddWithValue("@ownerEmail", Session["sessionOwnerEmail"]);
        updateInfo.ExecuteNonQuery();

        //alert user they have successfully updated their bio and send them back to dashboard
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your Info has been updated!')){document.location = 'truckdashboard.aspx'}</script>");
    }
}

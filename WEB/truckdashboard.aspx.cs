using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class truckdashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //when truck owner logs in, we save their email as a session variable so we can track who is currently logged in
        emailSession.Text = Session["sessionOwnerEmail"].ToString();
    }
    protected void truckOpenButton_Click(object sender, EventArgs e)
    {
        //if user clicks open, redirect them to the page listed below
        Response.Redirect("truckopen.aspx");
    }

    protected void truckCloseButton_Click(object sender, EventArgs e)
    {
        //open db connection
        SqlConnection con = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        con.Open();

        //update a trucks locations, using the session variable captured above to figure out which truck is updating location
        SqlCommand updateLocation = new SqlCommand("update dbo.[truck] set location='Closed' where ownerEmail=@ownerEmail", con);
        updateLocation.Parameters.AddWithValue("@ownerEmail", Session["sessionOwnerEmail"]);
        updateLocation.ExecuteNonQuery();
        con.Close();

        //alert owner their truck has been closed, redirect them to truck dashboard
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your truck is now closed!')){document.location = 'truckdashboard.aspx'}</script>");

    }

    protected void truckEditButton_Click(object sender, EventArgs e)
    {
        //redirect owner to page if button is clicked
        Response.Redirect("editInfo.aspx");
    }

    protected void signOutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("opening.aspx");
    }
}
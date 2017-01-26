using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class leavereview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void reviewButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //Opens a database connection
            SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
            conn.Open();

            //Creates a query to insert the review into the database and redirects to a confirmation page.
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[review] (truckName,comment,rating) VALUES(@truckName, @comment, @rating)", conn);
            cmd.Parameters.AddWithValue("@truckName", truckButtonList.SelectedValue);
            cmd.Parameters.AddWithValue("@comment", commentTextbox.Text);
            cmd.Parameters.AddWithValue("@rating", ratingButtonList.SelectedValue);
            cmd.ExecuteNonQuery();

            //close db connection
            conn.Close();

            //alert user their review has been recorded, redirect user to user dashboard
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your review has been submitted!')){document.location = 'userdashboard.aspx'}</script>");
        }





    }
}
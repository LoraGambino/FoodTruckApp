using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class createTruck : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void createTruckButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //Opens a Database connection
            SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
            conn.Open();

            //Creates a command to select all fields from the user table where the entered email matches a value in the database.
            SqlCommand cmd1 = new SqlCommand("select * from dbo.[truck] where ownerEmail=@ownerEmail", conn);
            cmd1.Parameters.AddWithValue("@ownerEmail", ownerEmailTB.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //If the entered email is unique, create an account with the text box values.
            if (dt.Rows.Count <= 0)
            {
                SqlCommand cmd2 = new SqlCommand("INSERT INTO dbo.[truck] (ownerEmail,ownerPassword,truckPIN,truckName,truckBio,ownerFirst,ownerLast,ownerPhone) VALUES(@ownerEmail, @ownerPass, @PIN, @truckName, @truckBio, @ownerFirst, @ownerLast, @ownerPhone)", conn);
                cmd2.Parameters.AddWithValue("@ownerEmail", ownerEmailTB.Text);
                cmd2.Parameters.AddWithValue("@ownerPass", ownerPasswordTB.Text);
                cmd2.Parameters.AddWithValue("@PIN", truckPINTB.Text);
                cmd2.Parameters.AddWithValue("@truckName", truckNameTB.Text);
                cmd2.Parameters.AddWithValue("@truckBio", truckBIOTB.Text);
                cmd2.Parameters.AddWithValue("@ownerFirst", ownerFirstTB.Text);
                cmd2.Parameters.AddWithValue("@ownerLast", ownerLastTB.Text);
                cmd2.Parameters.AddWithValue("@ownerPhone", ownerPhoneTB.Text);
                cmd2.ExecuteNonQuery();
                conn.Close();

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your account has been created!')){document.location = 'trucklogin.aspx'}</script>");
            }
            //If the entered email is not unique, send an alert to the user and empty the email and text fields.
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('An account with that email already exists')</script>");
                ownerEmailTB.Text = "";
                ownerPasswordTB.Text = "";
                conn.Close();
            }

        }

    }
    
    
}
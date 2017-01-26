using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class createaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void createAccountButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //Opens a Database connection
            SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
            conn.Open();

            //Creates a command to select all fields from the user table where the entered email matches a value in the database.
            SqlCommand cmd1 = new SqlCommand("select * from dbo.[user] where userEmail=@userEmail", conn);
            cmd1.Parameters.AddWithValue("@userEmail", newEmailTextbox.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //If the entered email is unique, create an account with the text box values.
            if (dt.Rows.Count <= 0)
            {
                SqlCommand cmd2 = new SqlCommand("INSERT INTO dbo.[user] (userEmail,userPassword,userFirst,userPIN) VALUES(@userEmail, @userPass, @first, @PIN)", conn);
                cmd2.Parameters.AddWithValue("@userEmail", newEmailTextbox.Text);
                cmd2.Parameters.AddWithValue("@userPass", newPasswordTextbox.Text);
                cmd2.Parameters.AddWithValue("@first", newFirstTextbox.Text);
                cmd2.Parameters.AddWithValue("@PIN", newPINTextbox.Text);
                cmd2.ExecuteNonQuery();
                conn.Close();
                
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your account has been created!')){document.location = 'userlogin.aspx'}</script>");
            }
            //If the entered email is not unique, send an alert to the user and empty the email and text fields.
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('An account with that email already exists')</script>");
                newEmailTextbox.Text = "";
                newPasswordTextbox.Text = "";
                conn.Close();
            }

        }
            
    }
}
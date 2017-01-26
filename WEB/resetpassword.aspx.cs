using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class resetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void resetPasswordButton_Click(object sender, EventArgs e)
    {
        //Opens a database connection
        SqlConnection con = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        con.Open();

        //Creates a command that checks the entered email and pin and compares it to matching database values.
        SqlCommand cmd = new SqlCommand("select * from dbo.[user] where userEmail=@userEmail and userPIN=@userPIN", con);
        cmd.Parameters.AddWithValue("@userEmail", resetEmailTextbox.Text);
        cmd.Parameters.AddWithValue("@userPIN", resetPINTextbox.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //If the values match existing values in the database, update the user's password with the new password.
        if (dt.Rows.Count > 0)
        {
            SqlCommand updatePass = new SqlCommand("update dbo.[user] set userPassword=@userPass where userEmail=@userEmail", con);
            updatePass.Parameters.AddWithValue("@userPass", newPasswordTextbox.Text);
            updatePass.Parameters.AddWithValue("@userEmail", resetEmailTextbox.Text);
            updatePass.ExecuteNonQuery();
           
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'> if(confirm('Your password has been changed!')){document.location = 'userlogin.aspx'}</script>");

        }
        //If the values do not match, reload the page.
        else if (dt.Rows.Count <= 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Invalid username or PIN')</script>");
            //Response.Redirect("resetpassword.aspx");


        }
    }
}
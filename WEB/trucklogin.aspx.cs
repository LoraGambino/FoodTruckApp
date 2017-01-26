using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class trucklogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void truckLoginButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (ownerEmailTextbox.Text == "admin@admin.com" && ownerPasswordTextbox.Text == "admin" )
            {
                Response.Redirect("adminPage.aspx");
            }

            else
            {
                //Creates a new connection string
                SqlConnection con = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
                con.Open();
                //Creates a command that selects the email and password from the text box and checks their values with the database. 
                SqlCommand cmd = new SqlCommand("select * from dbo.[truck] where ownerEmail=@ownerEmail and ownerPassword=@ownerPassword", con);
                cmd.Parameters.AddWithValue("@ownerEmail", ownerEmailTextbox.Text);
                cmd.Parameters.AddWithValue("@ownerPassword", ownerPasswordTextbox.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["sessionOwnerEmail"] = ownerEmailTextbox.Text;
                    Response.Redirect("truckdashboard.aspx");
                }
                else
                {
                    //Sends a javascript alert if the email and password don't match values in the database
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    ownerEmailTextbox.Text = "";
                    ownerPasswordTextbox.Text = "";
                }
                con.Close();
            }
        }
    }
}
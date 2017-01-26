using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from dbo.[user] where userEmail=@userEmail and userPassword=@userPassword", conn);
            cmd.Parameters.AddWithValue("@userEmail", emailTextbox.Text);
            cmd.Parameters.AddWithValue("@userPassword", passwordTextbox.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["sessionUserEmail"] = emailTextbox.Text;
                Response.Redirect("userdashboard.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                emailTextbox.Text = "";
                passwordTextbox.Text = "";
            }
            conn.Close();
        }
    }
}
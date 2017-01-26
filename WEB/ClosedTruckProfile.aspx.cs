using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ClosedTruckProfile : System.Web.UI.Page
{

    public string myAddress;
    public string truckBiostring;
    public string ownerPhonestring;
    public string truckNamestring;
    public string twitter;
    public string instagram;
    public string facebook;


    static SqlDataReader dr;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        conn.Open();

        cmd = new SqlCommand("select location, truckBio, ownerPhone, truckName, twitter, facebook, instagram  from dbo.[truck] where truckName = @selectedTruck", conn);
        cmd.Parameters.AddWithValue("@selectedTruck", Session["selectedTruck"]);
        try
        {
            dr = cmd.ExecuteReader();
            dr.Read();
            myAddress = dr[0].ToString();

            truckBiostring = dr[1].ToString();
            truckBio.Text = truckBiostring;
            location.Text = myAddress;

            ownerPhonestring = dr[2].ToString();
            ownerPhone.Text = "Phone: " + ownerPhonestring;

            truckNamestring = dr[3].ToString();
            truckName.Text = truckNamestring;

            twitter = dr[4].ToString();

            facebook = dr[5].ToString();

            instagram = dr[6].ToString();


        }

        catch (SqlException ex)
        {
            //Label1.Text = ex.Message;
        }

        conn.Close();



    }

    protected void FacebookButton_Click(object sender, ImageClickEventArgs e)
    {
        if (facebook == "" || facebook == null)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Truck has not linked their Facebook.')</script>");
        }
        else
        {
            Response.Redirect(facebook);
        }
    }

    protected void InstaButton_Click(object sender, ImageClickEventArgs e)
    {
        if (instagram == "" || instagram == null)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Truck has not linked their Instagram.')</script>");
        }
        else
        {
            Response.Redirect(instagram);
        }
    }

    protected void TwitterButton_Click(object sender, ImageClickEventArgs e)
    {
        if (twitter == "" || twitter == null)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>confirm('Truck has not linked their Twitter.')</script>");
        }
        else
        {
            Response.Redirect(twitter);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TruckOpenProfile : System.Web.UI.Page
{

    public string myAddress;
    static SqlDataReader dr;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=stillwaterfoodtruck.database.windows.net; Initial Catalog=FoodTruckDB;Persist Security Info=True;User ID=foodtruckadmin;Password=password1!");
        conn.Open();

        cmd = new SqlCommand("select location from dbo.[truck] where truckName = @selectedTruck", conn);
        cmd.Parameters.AddWithValue("@selectedTruck", Session["selectedTruck"]);
        try
        {
            dr = cmd.ExecuteReader();
            dr.Read();
            myAddress = dr[0].ToString();

        }

        catch (SqlException ex)
        {
            //Label1.Text = ex.Message;
        }

        conn.Close();


        //GRIDVIEW FOR COMMENTS/RATINGS


        //conn.Open();
        //SqlCommand ourquery = new SqlCommand("SELECT comment AS Comment, rating AS Rating FROM dbo.[review] WHERE truckName = @selectedTruck", conn);
        //ourquery.Parameters.AddWithValue("@selectedTruck", Session["selectedTruck"]);
        //ourquery.ExecuteNonQuery();
        //SqlDataAdapter sb = new SqlDataAdapter();
        //sb.SelectCommand = ourquery;
        //DataSet ds = new DataSet();
        //sb.Fill(ds);
        //GridView2.DataSource = ds;
        //GridView2.DataBind();
        //conn.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class findfood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Saves the selected gridview truck as a session variable and redirects to the profile page.
        Session["selectedTruck"] = GridView1.SelectedRow.Cells[1].Text.ToString();
        if (GridView1.SelectedRow.Cells[2].Text.ToString() == "Closed")
        {
            Response.Redirect("ClosedTruckProfile.aspx");
        }
        else { Response.Redirect("OpenTruckProfile.aspx"); }
      
    }
    
}
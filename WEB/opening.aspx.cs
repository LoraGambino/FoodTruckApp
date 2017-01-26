using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class opening : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void truckbutton_Click(object sender, EventArgs e)
    {
        //if user selects truck button, direct them to truck sign in 
        Response.Redirect("trucklogin.aspx");
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        //if user selects user button, direct them to user login
        Response.Redirect("userlogin.aspx");
    }
}
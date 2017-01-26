using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userdashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        userSession.Text = Session["sessionUserEmail"].ToString();
    }
    protected void userEventsButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("events.aspx");
    }

    protected void userReviewButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("leavereview.aspx");
    }

    protected void userFoodButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("findfood.aspx");
    }

    protected void signOutButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("opening.aspx");
    }
}
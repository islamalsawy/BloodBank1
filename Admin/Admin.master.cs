using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminid"] == null)
        {
            Response.Redirect("~/login.aspx");
            LinkButton1.Visible = false;
            Li2.Visible = false;

        }
        else
        {
            LinkButton1.Visible = true;
            LiLogin.Visible = false;
            btnUserName.Text =" مرحبا  "+ Session["Adminid"].ToString();

        }

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

            Session.RemoveAll();
            Response.Redirect("~/login.aspx");
        
   
        
    }


}

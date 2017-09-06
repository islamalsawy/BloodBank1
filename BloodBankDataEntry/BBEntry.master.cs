using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BloodBankDataEntry_BBEntry : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["BBankEntryUserName"] == null)
        {
            Response.Redirect("~/login.aspx");
            LinkButton1.Visible = false;
            Li2.Visible = false;

        }
        else
        {
            LinkButton1.Visible = true;
            LiLogin.Visible = false;
            btnUserName.Text = " مرحبا  " + Session["BBankEntryUserName"].ToString();
            

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session.RemoveAll();
        Response.Redirect("~/login.aspx");



    }

}

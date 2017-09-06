using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_akshara_multi_master_akshara : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetCurrentPage();
        if (Session["username"] == null)
        {
           
            liLogOut.Visible = false;
            Li2.Visible = false;
        
        }
        else
        {
            liLogOut.Visible = true;
            LiLogin.Visible = false;
            btnUserName.Text =  Session["username"].ToString()+"  مرحبا   " ;
          
        }
    }
    private void SetCurrentPage()
    {
        var pageName = GetPageName();

        switch (pageName)
        {
            case "index.aspx":
                home.Attributes["class"] = "active";
                break;
            case "services.aspx":
                service.Attributes["class"] = "active";
                break;
            case "portfolio.aspx":
                portfolio.Attributes["class"] = "active";
                break;           
            case "blog.aspx":
                blog.Attributes["class"] = "active";
                break;
            case "contact.aspx":
                contact.Attributes["class"] = "active";
                break;
        }
    }
    private string GetPageName()
    {
        return Request.Url.ToString().Split('/').Last();
    }

    protected void liLogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/login.aspx");
        liLogOut.Visible = false;
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyProfile2.aspx");
    }
}

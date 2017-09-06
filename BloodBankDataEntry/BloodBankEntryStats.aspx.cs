using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BloodBankDataEntry_BloodBankEntryStats : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["BBankEntryUserName"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else { lblBBankName.Text =  Session["BBandkEntryHosp"].ToString()+"  مرحبا  ";
        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = 0;
        SqlConnection conpass = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
        SqlCommand compass = new SqlCommand();
        compass.CommandType = CommandType.StoredProcedure;
        compass.CommandText = "changepassword";
        SqlParameter passold = new SqlParameter("@old", txt_newpassword.Text);
        SqlParameter passnew = new SqlParameter("@new", txt_oldpassword.Text);
        SqlParameter id = new SqlParameter("@id", Session["iduser"]);
        compass.Parameters.Add(id);
        compass.Parameters.Add(passnew);
        compass.Parameters.Add(passold);
        compass.Connection = conpass;
        conpass.Open();
        n = compass.ExecuteNonQuery();
        conpass.Close();
        if (n != 0)
        {
            lb_result.Text = "تم نعديل الرقم السري";
            Label4.Visible = false;
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = "خطأ في ادخال البيانات";
        }

    }
}
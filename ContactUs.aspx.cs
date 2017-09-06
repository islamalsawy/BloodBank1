using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
       


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "contactus";



            SqlParameter p1 = new SqlParameter("@Name", txtName.Text);
            SqlParameter p2 = new SqlParameter("@Email", txtEmail.Text);
            SqlParameter p3 = new SqlParameter("@Subject", txtSub.Text);
            SqlParameter p4 = new SqlParameter("@Content", txtCont.Text);
            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            cmd.Parameters.Add(p3);
            cmd.Parameters.Add(p4);

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            lblMSg.Text = "تم الإرسال بنجاح";
        
    }
}
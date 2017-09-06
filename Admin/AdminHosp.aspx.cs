using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class Admin_AdminHosp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
       

       
        SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["OurProjectBloodBankConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "insertHospital";
        
	
        SqlParameter p1 = new SqlParameter("@Hospital_Name", txtName.Text);
        SqlParameter p2 = new SqlParameter("@Hospital_Phone1", txtPhone1.Text);
        SqlParameter p3 = new SqlParameter("@Hospital_Phone2", txtPhone2.Text);
        SqlParameter p4 = new SqlParameter("@Address_Id", drpGovernrate.Text);
        SqlParameter p5 = new SqlParameter("@Hospital_Email", txtEmail.Text);
        SqlParameter p6 = new SqlParameter("@BloodBank_Number", drpBloodBank.Text);
      
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);
        cmd.Parameters.Add(p5);
        cmd.Parameters.Add(p6);
       
        cmd.Connection = conc;
        conc.Open();
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
            Lbl.Text = x.ToString() + "تم تسجيل مستشفى جديد";
        else
            Lbl.Text = "يوجد خطأ .. اعد المحاوله";

        conc.Close();
    
    }
}

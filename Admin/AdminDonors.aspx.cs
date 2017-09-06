using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_AdminDonors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     

    }

    protected void drpCity_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void drpGovernrate_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void grdDonors_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // Label7.Text = e.NewEditIndex.ToString();
      //  Label7.Text = grdDonors.Rows[e.NewEditIndex].Cells[8].Controls[1].ToString();// FindControl("drpGovernrate")).Text;//.ToString();
       // Label7.Text = "ahmed";

    }

    protected void drpCity_SelectedIndexChanged1(object sender, EventArgs e)
    {
      
    }

    




    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OurProjectBloodBankConnectionString"].ToString());
        SqlCommand cm = new SqlCommand();
        cm.CommandType = CommandType.StoredProcedure;
        cm.CommandText = "insertDonor";
    
        SqlParameter p1 = new SqlParameter("@Donor_Name", txtName.Text);
        SqlParameter p2 = new SqlParameter("@Donor_Blood_Id", drpBloodType.SelectedValue);
        SqlParameter p3 = new SqlParameter("@Donor_LastTime", txtLastTime.Text);
        SqlParameter p4 = new SqlParameter("@Donor_FirstPhone", txtPhone1.Text);
        SqlParameter p5 = new SqlParameter("@Donor_SecondPhone", txtPhone2.Text);
        SqlParameter p6 = new SqlParameter("@Donor_Address_Id", drpGovernrate.SelectedValue);
        SqlParameter p7 = new SqlParameter("@Donor_Email", txtEmail.Text);
        SqlParameter p8 = new SqlParameter("@Donor_Age", txtAge.Text);
        SqlParameter p9 = new SqlParameter("@Donor_Weight", txtWeight.Text);
        SqlParameter p10 = new SqlParameter("@Type_Contact", drpGender.Text);
        SqlParameter p11 = new SqlParameter("@Time_Contact", txtPhoneTime.Text);
        SqlParameter p12 = new SqlParameter("@Donor_Gender", drpGender.Text);
        SqlParameter p13 = new SqlParameter("@Donor_Password", txtPassword.Text);
        SqlParameter p14 = new SqlParameter("@City_Id", drpCity.SelectedValue);
       
        cm.Parameters.Add(p1);
        cm.Parameters.Add(p2);
        cm.Parameters.Add(p3);
        cm.Parameters.Add(p4);
        cm.Parameters.Add(p5);
        cm.Parameters.Add(p6);
        cm.Parameters.Add(p7);
        cm.Parameters.Add(p8);
        cm.Parameters.Add(p9);
        cm.Parameters.Add(p10);
        cm.Parameters.Add(p11);
        cm.Parameters.Add(p12);
        cm.Parameters.Add(p13);
        cm.Parameters.Add(p14);
        cm.Connection = con;
        con.Open();
        int x = cm.ExecuteNonQuery();
        if (x > 0)
           Lbl.Text = x.ToString() + "تم تسجيل متبرع جديد";
        else
           Lbl.Text = "يوجد خطأ .. اعد المحاوله";
       
        con.Close();
    }

   
}
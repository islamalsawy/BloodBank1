using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class preview_dotnet_templates_akshara_multi_master_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());


        if (drpLogin.SelectedIndex == 2)
        {
            string query = "select * from Admin where Admin_Id='" + txtUsername.Text + "'and Password='" + txtPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            // string output = cmd.ExecuteReader().ToString();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["Password"].ToString() == txtPassword.Text)
                {
                    Session["Adminid"] = txtUsername.Text;
                    Response.Redirect("~/Admin/Admin2.aspx");
                    
                }
            }
            else
            {
                lblLog.Text = "خطأ في اسم المستخدم أو كلمة السر";
            }
            con.Close();
        }

        else if (drpLogin.SelectedIndex == 0)
        {
            string query = "select * from Donors where Donor_Email='" + txtUsername.Text + "'and Donor_Password='" + txtPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["Donor_Password"].ToString() == txtPassword.Text)
                {

                    Session["session1"] = dr["Donor_Email"].ToString();
                    Session["iduser"] = dr["Donor_Id"].ToString();
                    Session["username"] = dr["Donor_Name"].ToString();
                    Session["add"] = dr["Donor_Address_Id"].ToString();

                    Response.Redirect("~/Donar.aspx");
                    
                    
                }

            }
            else
            {
                lblLog.Text = "خطأ في اسم المستخدم أو كلمة السر";
            }
            con.Close();
        }
        else if (drpLogin.SelectedIndex == 1)
        {
            string query = "select * from BBankEntry bb,Hospital h where bb.Hospital_Id=h.Hospital_Id and BBankEntryUserName='" + txtUsername.Text + "'and BBankEntryPassword='" + txtPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["BBankEntryPassword"].ToString() == txtPassword.Text)
                {
                    Session["BBankEntryUserName"] = dr["BBankEntryUserName"].ToString();
                    Session["BBandkEntryHosp"] = dr["Hospital_Name"];
                    Session["BBankNum"] = dr["Hospital_Id"];
                    Response.Redirect("~/BloodBankDataEntry/BloodBankEntryStats.aspx");
                }

            }
            else
            {
                lblLog.Text = "خطأ في اسم المستخدم أو كلمة السر";
            }
            con.Close();
        }

    }
}
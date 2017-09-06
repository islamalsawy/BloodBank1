using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Donar : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
            SqlCommand cmd = new SqlCommand("select * from Address", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drpGovernorate.DataSource = dt;
            drpGovernorate.DataBind();


        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "selectDonor";



        SqlParameter p1 = new SqlParameter("@Donor_Blood_Id", drpBloodType.SelectedValue);
        SqlParameter p2 = new SqlParameter("@Donor_Address_Id", drpGovernorate.SelectedValue);
        SqlParameter p3 = new SqlParameter("@City_id", drpCity.SelectedValue);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Connection = con;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();


        //adapt.SelectCommand = cmd;
        //adapt.Fill(ds);
        con.Close();

    }

    protected void drpGovernorate_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpCity.Items.Clear();
        drpCity.Items.Add("--اختر المركز--");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
        SqlCommand cmd = new SqlCommand("select * from City where Address_id=" + drpGovernorate.SelectedItem.Value, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        drpCity.DataSource = dt;
        drpCity.DataBind();
    }
}
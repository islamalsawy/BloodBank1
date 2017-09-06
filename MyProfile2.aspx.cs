using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class MyProfile2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["iduser"] == null)
        {
            Response.Redirect("login.aspx");
        }

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
            SqlCommand cmd = new SqlCommand("select * from Address", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            drp_governrate.DataSource = dt;
            drp_governrate.DataTextField = "Governrate";
            drp_governrate.DataValueField = "Address_Id";
            drp_governrate.DataBind();

            SqlCommand cmd2 = new SqlCommand("select * from Blood_Type", con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            drp_bloodtype.DataSource = dt2;
            drp_bloodtype.DataTextField = "Blood_Type";
            drp_bloodtype.DataValueField = "Blood_Id";
            drp_bloodtype.DataBind();
        }
        if (this.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
            SqlCommand cm = new SqlCommand();
            cm.CommandType = CommandType.StoredProcedure;
            SqlParameter par1 = new SqlParameter("@Email", Session["session1"]);
           lb_id.Text = Session["iduser"].ToString();
            cm.Parameters.Add(par1);
            cm.CommandText = "userlogin";
            cm.Connection = con;

            con.Open();
            SqlDataReader dr1 = cm.ExecuteReader();
            dr1.Read();
            
                txt_username.Text = dr1["Donor_Name"].ToString();
                txt_phone.Text = dr1["Donor_FirstPhone"].ToString();
                txt_dateoflast.Text = dr1["Donor_LastTime"].ToString();
                txt_email.Text = dr1["Donor_Email"].ToString();
                txt_dateoflast.Text = dr1["Donor_LastTime"].ToString();
                drp_governrate.SelectedItem.Text = (dr1["Governrate"].ToString());
                drp_bloodtype.SelectedItem.Text = (dr1["Blood_Type"].ToString());
                drp_time.Text = (dr1["Time_Contact"].ToString());
                drp_typeofcontact.Text = (dr1["Type_Contact"].ToString());
                drp_gender.Text = (dr1["Donor_Gender"].ToString());
              drp_city.Text = dr1["City_Name"].ToString();
                //drp_bloodtype.SelectedValue = dr1["Donor_BloodType"].ToString();
                con.Close();
            
           
               
                //SqlDataReader dr11;
                //SqlConnection con22 = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
                //SqlCommand cm22 = new SqlCommand();
                //cm.CommandType = CommandType.StoredProcedure;
                //cm.CommandText = "cityofgovern";
                //SqlParameter par22 = new SqlParameter("@gov", 1);
                //cm22.Parameters.Add(par22);
                //cm22.Connection = con22;
                //con22.Open();
                //dr11 = cm.ExecuteReader();
                //drp_city.DataSource = dr11;
                //drp_city.DataTextField = "City_id";
                //drp_city.DataValueField = "City_name";
                //con22.Close();

                //SqlDataReader dr;
                //SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
                //SqlCommand cm2 = new SqlCommand();
                //cm.CommandType = CommandType.StoredProcedure;
                //cm.CommandText = "cityofgovern";
                //SqlParameter par2 = new SqlParameter("@gov", 1);
                //cm2.Parameters.Add(par2);
                //cm.Connection = con;
                //con.Open();
                //dr = cm.ExecuteReader();
                //drp_city.DataSource = dr;
                //drp_city.DataTextField = "City_id";
                //drp_city.DataValueField = "City_name";

                //con.Close();


           
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
        SqlCommand cm = new SqlCommand();
        cm.CommandType = CommandType.StoredProcedure;
        cm.CommandText = "update_Donor";
        SqlParameter par1 = new SqlParameter("@id", lb_id.Text);
        SqlParameter par2 = new SqlParameter("@gender", drp_gender.Text);
        SqlParameter par3 = new SqlParameter("@email", txt_email.Text);
        SqlParameter par4 = new SqlParameter("@addressId", drp_governrate.Text);
        SqlParameter par5 = new SqlParameter("@name", txt_username.Text);
        SqlParameter par6 = new SqlParameter("@bloodType", drp_bloodtype.Text);
        SqlParameter par7 = new SqlParameter("@lastTime", txt_dateoflast.Text);
        SqlParameter par8 = new SqlParameter("@timeContact", drp_time.Text);
        SqlParameter par9 = new SqlParameter("@typeContact", drp_typeofcontact.Text);
        SqlParameter par10 = new SqlParameter("@firstPhone", txt_phone.Text);
        cm.Parameters.Add(par1);
        cm.Parameters.Add(par2);
        cm.Parameters.Add(par3);
        cm.Parameters.Add(par4);
        cm.Parameters.Add(par5);
        cm.Parameters.Add(par6);
        cm.Parameters.Add(par7);
        cm.Parameters.Add(par8);
        cm.Parameters.Add(par9);
        cm.Parameters.Add(par10);
        cm.Connection = con;
        con.Open(); 
        cm.ExecuteNonQuery();
        lblMsg.Text = "تم تعديل البيانات بنجاح";
        con.Close();
    }

    protected void txt_username_TextChanged(object sender, EventArgs e)
    {

    }

    protected void drp_governrate_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["addressofuser"] = drp_governrate.SelectedValue.ToString();

        drp_city.Items.Clear();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
        SqlCommand cmd = new SqlCommand("select * from City where Address_id=" + drp_governrate.SelectedValue, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        drp_city.DataSource = dt;
        drp_city.DataTextField = "City_Name";
        drp_city.DataValueField = "City_Id";
        drp_city.DataBind();

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
            //BloodBank
            RadioButton rb_time = null;

            if (btn_alltime.Checked == true)
            {
                rb_time = btn_alltime;
            }
            else if (btn_goodmorning.Checked == true)
            {
                rb_time = btn_goodmorning;
            }
            else if (btn_night.Checked == true)
            {
                rb_time = btn_night;
            }
            string rb_type = null;

            if (btn_call.Checked == true && btn_message.Checked == true)
            {
                rb_type = "call and sms";
            }
            else if(btn_call.Checked == true && btn_message.Checked == false)
            {
                rb_type = "call" ;
            }
            else 
            {
                rb_type = "Message";
            }


            SqlConnection con_insert = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
            SqlCommand comm = new SqlCommand();
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "insert_Donor";
            SqlParameter p1 = new SqlParameter("@name", Txt_UserName.Text);
            SqlParameter p2 = new SqlParameter("@sex", Drp_six.Text);
            SqlParameter p3 = new SqlParameter("@bloodType", Drp_BloodType.SelectedValue);
            SqlParameter p4 = new SqlParameter("@firstPhone", Txt_firstphone.Text);
            SqlParameter p5 = new SqlParameter("@secondPhone", Txt_secondphone.Text);
            SqlParameter p6 = new SqlParameter("@typeContact", rb_type);
            SqlParameter p7 = new SqlParameter("@timeContact", rb_time.Text);
            SqlParameter p8 = new SqlParameter("@lastTime", Txt_lastTime.Text);
            SqlParameter p9 = new SqlParameter("@weight", Txt_Weight.Text);
            SqlParameter p10 = new SqlParameter("@age", Txt_Age.Text);
            SqlParameter p11 = new SqlParameter("@email", Txt_Email.Text);
            SqlParameter p12 = new SqlParameter("@addressId", Drp_Governrate.SelectedValue);
            SqlParameter p13 = new SqlParameter("@password", Txt_Password.Text);
            


            comm.Parameters.Add(p1);
            comm.Parameters.Add(p2);
            comm.Parameters.Add(p3);
            comm.Parameters.Add(p4);
            comm.Parameters.Add(p5);
            comm.Parameters.Add(p6);
            comm.Parameters.Add(p7);
            comm.Parameters.Add(p8);
            comm.Parameters.Add(p9);
            comm.Parameters.Add(p10);
            comm.Parameters.Add(p11);
            comm.Parameters.Add(p12);
            comm.Parameters.Add(p13);
           


            comm.Connection = con_insert;
            con_insert.Open();
          int x=  comm.ExecuteNonQuery();
        if (x > 0)
            lblMsg.Text = x.ToString() + "تم تسجيل متبرع جديد ";
        else
            lblMsg.Text = "يوجد خطأ .. اعد المحاوله";
        con_insert.Close();


        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
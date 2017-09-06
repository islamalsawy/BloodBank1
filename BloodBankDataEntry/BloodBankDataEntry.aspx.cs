using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BloodBankAdmin_BloodBankAdmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BloodBank"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["BBankEntryUserName"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            lblDateTime.Text = DateTime.Now.ToString();
            txtBloodBankId.Text = Session["BBankNum"].ToString();
        }
     

    }

    protected void btnBloodEntry_Click(object sender, EventArgs e)
    {
   
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "BloodEntry";


        SqlParameter p1 = new SqlParameter("@Blood_Id", drpBloodType.SelectedValue);
        SqlParameter p2 = new SqlParameter("@BloodBank_Number", int.Parse(txtBloodBankId.Text));
        SqlParameter p3 = new SqlParameter("@Quantity", int.Parse(txtQuantity.Text));
        SqlParameter p4 = new SqlParameter("@Remain_Quantity", int.Parse(txtRemains.Text));
        SqlParameter p5 = new SqlParameter("@Withdraw_Quantity", int.Parse(txtWithdraw.Text));
      SqlParameter p6 = new SqlParameter("@Date", ( lblDateTime.Text));

        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        cmd.Parameters.Add(p3);
        cmd.Parameters.Add(p4);
        cmd.Parameters.Add(p5);
        cmd.Parameters.Add(p6);
        cmd.Connection = con;
        con.Open();
         cmd.ExecuteNonQuery();
        lblSuc.Text = "تم ادخال البيانات بنجاح";
        con.Close();

    }

    protected void txtWithdraw_TextChanged(object sender, EventArgs e)
    {
        
      

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/login.aspx");
    }


}
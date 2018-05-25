using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        string sql = "";
        sql = sql + " Select UserID from Employee ";
        sql = sql + " where UserID = '"+ txtUserID.Text +"' ";
        sql = sql + " and Password = '" + txtPassword.Text +"'";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            Session["UserID"] = txtUserID.Text;
            Response.Redirect("Products.aspx", false);
        }
    }

    protected void btnNewSignUP_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        objcmd.CommandText = "Insert into Employee(Name, Address, Mobile, Email, Gender, Salary, UserID, Password)Values('" + txtName.Text + "','" + txtAddress.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtGender.Text + "','" + txtSalary.Text + "','" + txtUserID.Text + "','" + txtPassword.Text + "')";
        objcmd.ExecuteNonQuery();
        lblMessage.Text = "Record Submitted Successfully!!!";




    }

    protected void btnLoginPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null) Response.Redirect("Login.aspx");
        if (!IsPostBack)
        {
            if(Request.QueryString["id"]!=null)
                fillControl();
        }

    }
    protected void btnSubmitSuppliers_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (Request.QueryString["id"] == null)
        {
            objcmd.CommandText = "Insert into Suppliers(SupplierName,Address,Phone,Mobile,Email)Values('" + txtSuppliersName.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "')";

            objcmd.ExecuteNonQuery();

            lblSuppliers.Text = "Record Submitted Successfully";
        }

        else if (Request.QueryString["id"] != null)
        {
            string sql = "";
            sql = sql + " Update Suppliers ";
            sql = sql + " set ";
            sql = sql + " SupplierName = '"+txtSuppliersName.Text+"', ";
            sql = sql + " Address = '" + txtAddress.Text + "', ";
            sql = sql + " Phone = '" + txtPhone.Text + "', ";
            sql = sql + " Mobile = '" + txtMobile.Text + "',";
            sql = sql + " Email = '" + txtEmail.Text + "' ";
            sql = sql + " where Id = " + Request.QueryString["id"] + " ";
            objcmd.CommandText = sql;
            objcmd.ExecuteNonQuery();
            lblSuppliers.Text = " Record Updated Successfully...! ";
        }
    }

    private void fillControl()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = " Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS; user id = sa; password = kittu2pathak; Initial Catalog=InventoryKrutik; ";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        string sql = "";
        sql = sql + "select Id, SupplierName, Address, Phone, Mobile, Email from Suppliers where id = " + Request.QueryString["id"] + "";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            reader.Read();
            txtSuppliersName.Text = reader["SupplierName"].ToString();
            txtAddress.Text = reader["Address"].ToString();
            txtEmail.Text = reader["Email"].ToString();
            txtMobile.Text = reader["Mobile"].ToString();
            txtPhone.Text = reader["Phone"].ToString();
            
        }
    }
}
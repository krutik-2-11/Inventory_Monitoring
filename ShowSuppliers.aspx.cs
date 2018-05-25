using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class ShowSuppliers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null) Response.Redirect("Login.aspx");
        fillgrdSuppliers();
    }

    private void fillgrdSuppliers()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        string sql = "";
        sql = sql + "select Id, SupplierName, Address, Phone, Mobile, Email from Suppliers";

        if (txtSupplierName.Text != "")
            sql = sql + " where SupplierName = '" + txtSupplierName.Text+ "'";



        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            grdSuppliers.DataSource = reader;
            grdSuppliers.DataBind();

        }
    }


    protected void grdSuppliers_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (e.CommandName == "delete")
        {
            objcmd.CommandText = "Delete from Suppliers Where Id = " + e.CommandArgument + "";
            objcmd.ExecuteNonQuery();
            lblMessage.Text = " Record Deleted Successfully...! ";
            fillgrdSuppliers();
        }
    }

    protected void grdSuppliers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
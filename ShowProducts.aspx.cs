using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ShowProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null) Response.Redirect("Login.aspx");
        fillgrdProducts();
        lblNoRecordFound.Visible = false;
    }

    private void fillgrdProducts()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        string sql = "";
        sql = sql + " select Id, CompanyName, ProductName, Model, Cost from Products ";
        if(txtProductName.Text !="")sql = sql +" where ProductName = '"+ txtProductName.Text +"'";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            lblNoRecordFound.Visible = false;
            grdProducts.Visible = true;
            grdProducts.DataSource = reader;
            grdProducts.DataBind();

        }
        else
        {
            lblNoRecordFound.Visible = true;
            grdProducts.Visible = false;
        }

    
    
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        fillgrdProducts();
    }

    protected void grdProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (e.CommandName == "delete")
        {
            objcmd.CommandText = " Delete from Products where Id = "+ e.CommandArgument +" ";
            objcmd.ExecuteNonQuery();
            lblMessage.Text = " Record Deleted Successfully...! ";
            fillgrdProducts();
        }
    }

    protected void grdProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
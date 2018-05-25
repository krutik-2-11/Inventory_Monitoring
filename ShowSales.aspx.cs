using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ShowSales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null) Response.Redirect("Login.aspx");
        fillgrdSales();
        lblNoRecordFound.Visible = false;

    }

    private void fillgrdSales()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;


        String sql = "";
        sql = sql + "select ID, CustomerName, ProductId, Quantity, Cost, DOS from Sales";

        if(txtCustomerName.Text!="")
            sql = sql + " where CustomerName = '" + txtCustomerName.Text + "'";

        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            grdSales.DataSource = reader;
            grdSales.DataBind();

        }

        else
        {
            lblNoRecordFound.Visible = true;
            grdSales.Visible = false;
        }
    
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        fillgrdSales();
    }

    protected void grdSales_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (e.CommandName == "delete")
        {
            objcmd.CommandText = "Delete from sales where id = " + e.CommandArgument + " ";
            objcmd.ExecuteNonQuery();
            lblMessage.Text = " Record Deleted Successfully...! ";
            fillgrdSales();
        }
    }

    protected void grdSales_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
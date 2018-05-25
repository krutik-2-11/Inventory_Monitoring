using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ShowPurchases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null) Response.Redirect("Login.aspx");
        if (!IsPostBack)
        {
            fillgrdPurchases();
            lblNoRecordFound.Visible = false;
        }
    }

    private void fillgrdPurchases()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS ;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;
        string sql = "";
        sql = sql + " Select Purchases.Id, SupplierID, ProductID,ProductName,";
        sql = sql + "  Quantity, PurchaseCost, DOP from Purchases ";
        sql = sql + " join Products on Products.Id = Purchases.ProductID ";
        if (txtProductName.Text != "") sql = sql + " where ProductName = '" + txtProductName.Text + "'";


        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            lblNoRecordFound.Visible = false;
            grdPurchases.Visible = true;
            grdPurchases.DataSource = reader;
            grdPurchases.DataBind();

        }
        else
        {
            lblNoRecordFound.Visible = true;
            grdPurchases.Visible = false;
        }
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        fillgrdPurchases();
    }





    protected void grdPurchases_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (e.CommandName == "delete")
        {
            objcmd.CommandText = "Delete from purchases where Id = " + e.CommandArgument + " ";
            objcmd.ExecuteNonQuery();
            lblMessage.Text = " Record Deleted Successfully...! ";
            fillgrdPurchases();

        }

    }

    protected void grdPurchases_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
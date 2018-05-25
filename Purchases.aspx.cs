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
            fillddlProducts();
            fillddlSuppliers();
            //fillControl();
            if (Request.QueryString["id"] != null) fillControl();
        }
    }
    protected void btnPurchases_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (Request.QueryString["id"] == null)      //For inserting the record if requested id to be updated not found
        {
            objcmd.CommandText = "Insert into Purchases(SupplierID,ProductID,Quantity,PurchaseCost,DOP)Values(" + ddlSupplierID.SelectedItem.Value + "," + ddlProductID.SelectedItem.Value + ",'" + txtQuantity.Text + "','" + txtPurchaseCost.Text + "','" + txtDOP.Text + "')";
            objcmd.ExecuteNonQuery();
            lbl.Text = "Record Submitted Successfully";
        }

        else if (Request.QueryString["id"] != null)     //for updating the record if requested id already present
        {
            String sql = "";
            sql = sql + " Update Purchases ";
            sql = sql + " set ";
            sql = sql + " SupplierID = " + ddlSupplierID.SelectedItem.Value + ",";
            sql = sql + " ProductID = " + ddlProductID.SelectedItem.Value + ",";
            sql = sql + " Quantity = '" + txtQuantity.Text + "',";
            sql = sql + " PurchaseCost = '" + txtPurchaseCost.Text + "',";
            sql = sql + " DOP = '" + txtDOP.Text + "'";
            sql = sql + "where Id = " + Request.QueryString["id"].ToString() + "";
            objcmd.CommandText = sql;
            objcmd.ExecuteNonQuery();
            lbl.Text = "Record Updated Successfully.....!";

        }

    }

    private void fillddlProducts()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        objcmd.CommandText = " Select Id,ProductName from Products ";
        SqlDataReader reader = objcmd.ExecuteReader();

        ddlProductID.DataSource = reader;
        ddlProductID.DataTextField = "ProductName";
        ddlProductID.DataValueField = "Id";
        ddlProductID.DataBind();

    }

    private void fillddlSuppliers()
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        objcmd.CommandText = " Select Id,SupplierName from Suppliers ";
        SqlDataReader reader = objcmd.ExecuteReader();

        ddlSupplierID.DataSource = reader;
        ddlSupplierID.DataTextField = "SupplierName";
        ddlSupplierID.DataValueField = "Id";
        ddlSupplierID.DataBind();


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
        sql = sql + "select Id, SupplierID, ProductID, Quantity, PurchaseCost, DOP from Purchases where Id = " + Request.QueryString["id"] + "";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            reader.Read();
            ListItem li1 = ddlProductID.Items.FindByValue(reader["ProductId"].ToString());
            ListItem li2 = ddlSupplierID.Items.FindByValue(reader["SupplierId"].ToString());

            if (li1 != null) li1.Selected = true;
            if (li2 != null) li2.Selected = true;

            txtDOP.Text = reader["DOP"].ToString();
            txtPurchaseCost.Text = reader["PurchaseCost"].ToString();
            txtQuantity.Text = reader["Quantity"].ToString();

        }
    }
}
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
            if(Request.QueryString["id"]!=null)
                fillControl();

        }


    }
    protected void btnSales_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = "Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS;user id = sa;password = kittu2pathak;Initial Catalog = InventoryKrutik;";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (Request.QueryString["id"] == null)      //insert the record with new id
        {
            objcmd.CommandText = "Insert into Sales(CustomerName,ProductId,Quantity,Cost,DOS)Values('" + txtCustName.Text + "'," + ddlProductID.SelectedItem.Value + ",'" + txtQuantity.Text + "','" + txtCost.Text + "','" + txtDOS.Text + "')";
            objcmd.ExecuteNonQuery();
            lbl.Text = "Record Submitted successfully!!";
        }

        else if (Request.QueryString["id"] != null)       //update the existing id
        {
            string sql = "";
            sql = sql + " Update Sales ";
            sql = sql + "set";
            sql = sql + " CustomerName = '"+txtCustName.Text+"',";
            sql = sql + " ProductId = "+ddlProductID.SelectedItem.Value+",";
            sql = sql + " Quantity = '"+txtQuantity.Text+"',";
            sql = sql + " Cost = '"+txtCost.Text+"',";
            sql = sql + " DOS = '"+txtDOS.Text+"'";
            sql = sql + " where Id = " + Request.QueryString["id"].ToString() + "";
            objcmd.CommandText = sql;
            objcmd.ExecuteNonQuery();
            lbl.Text = "Record updated successfully!!!";

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

        objcmd.CommandText = "Select Id,ProductName from Products";
        SqlDataReader reader = objcmd.ExecuteReader();

        ddlProductID.DataSource = reader;
        ddlProductID.DataTextField = "ProductName";
        ddlProductID.DataValueField = "Id";
        ddlProductID.DataBind();
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
        sql = sql + "Select ID, CustomerName, ProductId, Quantity, Cost, DOS from Sales where Id = " + Request.QueryString["id"] + "";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            reader.Read();
            ListItem li = ddlProductID.Items.FindByValue(reader["ProductId"].ToString());
            if (li != null) li.Selected = true;
            txtCustName.Text = reader["CustomerName"].ToString();
            txtCost.Text = reader["Cost"].ToString();
            txtDOS.Text = reader["DOS"].ToString();
            txtQuantity.Text = reader["Quantity"].ToString();


        }
    }

}
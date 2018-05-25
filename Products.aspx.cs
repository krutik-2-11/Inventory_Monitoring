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
           if(Request.QueryString["id"]!=null) fillControl();
        }
    }
    protected void btnSubmitProducts_Click(object sender, EventArgs e)
    {
        SqlConnection objcon = new SqlConnection();
        objcon.ConnectionString = " Data source = LAPTOP-CCHRDOI8\\SQLEXPRESS; user id = sa; password = kittu2pathak; Initial Catalog=InventoryKrutik; ";
        objcon.Open();

        SqlCommand objcmd = new SqlCommand();
        objcmd.CommandType = CommandType.Text;
        objcmd.Connection = objcon;

        if (Request.QueryString["id"] == null)// For Insert
        {
            objcmd.CommandText = " Insert into Products(CompanyName, ProductName, Model, Cost) Values('" + txtCompanyName.Text + "','" + txtProductName.Text + "','" + txtModel.Text + "'," + txtCost.Text + ") ";
            objcmd.ExecuteNonQuery();
            lblMessage.Text = "Record Insert Successfully.... ";
        }
        else if (Request.QueryString["id"] != null)// for Update
        {
            string sql = "";
            sql = sql + " Update Products ";
            sql = sql + " set ";
            sql = sql + " CompanyName = '"+ txtCompanyName.Text +"', ";
            sql = sql + " ProductName = '"+ txtProductName.Text +"',";
            sql = sql + " Model = '"+ txtModel.Text +"', ";
            sql = sql + " Cost = '"+ txtCost.Text +"'";
            sql = sql + " where Id = "+ Request.QueryString["id"].ToString()+"";
            objcmd.CommandText = sql;
            objcmd.ExecuteNonQuery();
            lblMessage.Text = " Record Updated Successfully...!";
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
        sql = sql + " Select Id,CompanyName,ProductName,Model,Cost from Products where id = " + Request.QueryString["id"] + "";
        objcmd.CommandText = sql;
        SqlDataReader reader = objcmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            reader.Read();

            txtCompanyName.Text = reader["CompanyName"].ToString();
            txtProductName.Text = reader["ProductName"].ToString();
            txtModel.Text = reader["Model"].ToString();
            txtCost.Text = reader["Cost"].ToString();
        }
    }
}
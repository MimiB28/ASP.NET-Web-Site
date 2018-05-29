using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PriceList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Enable the GridView paging option and  
        // specify the page size. 
        gvProducts.AllowPaging = true;
        gvProducts.PageSize = 15;

        // Enable the GridView sorting option. 
        //gvProducts.AllowSorting = true;

        // Populate the GridView. 
        BindGridView();
        Page.DataBind();
    }

    private void BindGridView()
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FPdbConnection"].ConnectionString))
        {
            DataSet dsProducts = new DataSet();

            string sqlcmd = "SELECT ProductID, ProductName, FlowersType, BouquetContents, Price FROM Products";
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd,conn);

            conn.Open();

            da.Fill(dsProducts, "Products");

            DataView dvProducts = dsProducts.Tables["Products"].DefaultView;

            //dvProducts.Sort = ViewState["SortExpression"].ToString();

            gvProducts.DataSource = dvProducts;
            //dvProducts.DataBind();
            conn.Close();
        }
    }
}
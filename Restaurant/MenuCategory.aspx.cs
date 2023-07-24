using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MenuCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.MenuCategoriesTableAdapter da = new DataSet1TableAdapters.MenuCategoriesTableAdapter();
            DataSet1.MenuCategoriesDataTable dt = da.CategoryData();

            if (dt.Rows.Count <= 0)
            {
                throw new Exception("Invalid Data");
            }

            // Clear the labels before displaying data
            lbl.Text = "";

            // Loop through the DataTable to display each row separately
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataSet1.MenuCategoriesRow dr = (DataSet1.MenuCategoriesRow)dt.Rows[i];
                lbl.Text += dr.categoryno + "<br />";
                lbl.Text += dr.name + "<br />";
                lbl.Text += dr.comment + "<br /><br />";
            }
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}

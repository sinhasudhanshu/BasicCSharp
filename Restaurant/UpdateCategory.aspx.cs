using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.CategoryInfoTableAdapter da = new DataSet1TableAdapters.CategoryInfoTableAdapter();
            DataSet1.CategoryInfoDataTable dt = da.GetDataByCategory(Convert.ToInt32(txtCategoryNo.Text));

            if (dt.Rows.Count <= 0)
            {
                throw new Exception("Invalid category no");

            }
            DataSet1.CategoryInfoRow dr = (DataSet1.CategoryInfoRow)dt.Rows[0];
            lblName.Text = dr.name;
            lblComment.Text = dr.comment;


        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
            lblName.Text = "";
            lblComment.Text = "";
        }
    }
}
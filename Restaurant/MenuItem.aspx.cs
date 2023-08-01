using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MenuItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.MenuInfoTableAdapter da = new DataSet1TableAdapters.MenuInfoTableAdapter();
            da.Insert(Convert.ToInt32(DropDownList1.Text), txtItemName.Text, Convert.ToInt32(txtPrice.Text), txtPacking.Text);
            GridView1.DataBind();
            lbl.Text = "item is added" + da.MaxMenu();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtItemName.Text = "";
        txtPacking.Text = "";
        txtPrice.Text = "";
    }
}
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
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.CategoryInfoTableAdapter da = new DataSet1TableAdapters.CategoryInfoTableAdapter();
            da.Insert(txtName.Text, txtComment.Text);
            GridView1.DataBind();
            lbl.Text = "Item addded to the List" + da.MaxCategory();
        }
        catch (Exception ex)
        {
            lbl.Text =  ex.Message;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtComment.Text = "";
        lbl.Text = "";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
        try
        {
            int category = Convert.ToInt32(e.Keys[0]);
            (new DataSet1TableAdapters.CategoryInfoTableAdapter()).Delete(category);
            Title = "Deleted";
            GridView1.DataBind();
        }
        catch(Exception ex){
            Title = ex.Message;
        }
    }
}

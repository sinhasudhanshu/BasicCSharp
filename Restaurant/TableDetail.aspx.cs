using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TableDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.TableDetailTableAdapter da = new DataSet1TableAdapters.TableDetailTableAdapter();
            da.Insert(txtTableName.Text, Convert.ToInt32(txtNumberofSeats.Text), txtComments.Text, "Free");
            lbl.Text = "Table selected" + da.MaxTable();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtTableName.Text = "";
        txtNumberofSeats.Text = "";
        txtComments.Text = "";
     //   txtBookingStatus.Text = "";
        lbl.Text = "";

    }
}
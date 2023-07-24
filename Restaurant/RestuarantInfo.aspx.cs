using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RestuarantInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // Check if the page is not loaded due to a postback
        {
            try
            {
                lbl.Text = "";
                DataSet1TableAdapters.Restuarant_InfoTableAdapter da = new DataSet1TableAdapters.Restuarant_InfoTableAdapter();
                DataSet1.Restuarant_InfoDataTable dt = da.RestuarantData();

                if (dt.Rows.Count <= 0)
                {
                    throw new Exception("Invalid Data");
                }

                DataSet1.Restuarant_InfoRow dr = (DataSet1.Restuarant_InfoRow)dt.Rows[0];
                lblRestuarantName.Text = dr.restuarantname;
                lblPhoneNo.Text = "" + dr.phoneno;
                lblAddress.Text = dr.address;
                lblPincode.Text = "" + dr.pincode;
                lblTagline.Text = "" + dr.tagline;
            }
            catch (Exception ex)
            {
                lbl.Text = ex.Message;
                lblRestuarantName.Text = "";
                lblPhoneNo.Text = "";
                lblAddress.Text = "";
                lblPincode.Text = "";
                lblTagline.Text = "";
            }
        }
    }
    
}
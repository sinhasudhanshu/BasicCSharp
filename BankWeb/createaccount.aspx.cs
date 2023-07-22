﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.accountsTableAdapter da = new DataSet1TableAdapters.accountsTableAdapter();
            da.Insert(txtName.Text, Convert.ToInt32(txtBalance.Text));
            lbl.Text = "Account created your account no is " + da.MaxAccount();
        }
        catch (Exception ex)
        {
           lbl.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtBalance.Text = "";
        txtName.Text = "";
        lbl.Text = "";

    }
}
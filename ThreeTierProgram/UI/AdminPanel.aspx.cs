﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["UserID"] = null;
        Session["UserName"] = null;
        Session["Role"] = null;
        Response.Redirect("login.aspx");

    }
}
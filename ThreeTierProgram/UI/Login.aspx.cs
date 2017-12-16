using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

public partial class UI_Login : System.Web.UI.Page
{
    clsBusinessLayer objLogic;
    protected void Page_Load(object sender, EventArgs e)
    {
        objLogic = new clsBusinessLayer();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((username.Value == "") || (password.Value == ""))
        {

        }

        if ((objLogic.UserLogin(username.Value, password.Value)) == true)
        {
            if (Session["Role"].ToString() == "1")

                Response.Redirect("AdminPanel.aspx");
            else
                if (Session["Role"].ToString() == "2")
                Response.Redirect("UserPanel.aspx");
            else
            {
                //پیغام خطا
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BusinessLayer;

public partial class UI_users : System.Web.UI.Page
{
    clsBusinessLayer objLogic;
    protected void Page_Load(object sender, EventArgs e)
    {
        objLogic = new clsBusinessLayer();
       
        GridView1.DataSource = (DataTable)objLogic.LoadUser();
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    { 
        objLogic.AddUserDB(txtname.Text, txtPersonalCode.Text, txtUserName.Text, txtPass.Text, "2");
        Response.Redirect("users.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        objLogic = new clsBusinessLayer();
        int index = e.RowIndex;
        int UserId = Convert.ToInt32(GridView1.Rows[index].Cells[5].Text);
        objLogic.DeleteUser(UserId);
        Response.Redirect("passenger.aspx");
    }
}

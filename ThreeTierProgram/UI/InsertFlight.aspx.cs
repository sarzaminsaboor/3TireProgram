using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UI_InsertFlight : System.Web.UI.Page
{
    clsBusinessLayer objLogic;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        objLogic = new clsBusinessLayer();
        GridView1.DataSource = (DataTable)objLogic.LoadFlight();
        GridView1.DataBind();
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        objLogic.AddFlightDB(txtSourse.Text, txtDistination.Text, txtname.Text, txtPrice.Text, txtDAte.Text, txtTime.Text);
        Response.Redirect("InsertFlight.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        objLogic = new clsBusinessLayer();
        int index = e.RowIndex;
        int FlightID = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text);
        objLogic.DeleteFlight(FlightID);
        Response.Redirect("passenger.aspx");
    }
}
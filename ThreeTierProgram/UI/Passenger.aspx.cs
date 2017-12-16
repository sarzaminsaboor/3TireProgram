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

public partial class UI_Passenger : System.Web.UI.Page
{
    clsBusinessLayer objLogic;
    int userid;
    protected void Page_Load(object sender, EventArgs e)
    {
         userid = Convert.ToInt32(Session["UserID"].ToString());
         objLogic = new clsBusinessLayer();
         GridView1.DataSource = (DataTable)objLogic.LoadPassenger(userid);
         GridView1.DataBind();
         GridView2.DataSource = (DataTable)objLogic.LoadFlight();
         GridView2.DataBind();

    }
      protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (!(objLogic.SearchPassenger(txtCodemelli.Text)))
        {
            objLogic.AddNewPassenger(txtname.Text, txtFatherName.Text, txtCodemelli.Text, txtTel.Text,userid);
            Response.Redirect("passenger.aspx");
        }
        else
            LBLErrMsg.Text = " این کد ملی قبلا در سیستم ثبت شده است .";
       
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        int FlightID, PassengerID;
        if ((GridView1.Rows.Count != 0)&&(GridView2.Rows.Count!=0))
        {
            //عملیات درج
            FlightID = Convert.ToInt32(GridView2.SelectedRow.Cells[6].Text);
            PassengerID= Convert.ToInt32(GridView1.SelectedRow.Cells[5].Text);
            objLogic.AddOrderDB(PassengerID, FlightID, userid);
            Response.Redirect("PrintTicket.aspx?PassengerID=" + PassengerID.ToString());
           

        }
        else
        {
            // پیغام خطا مبنی بر اینکه سطری انتخاب نشده است 
            LBLErrMsg.Text = "   موردی از مسافران یا پرواز انتخاب نشده است.";
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        objLogic = new clsBusinessLayer();
        int index = e.RowIndex;
        int PassID = Convert.ToInt32(GridView1.Rows[index].Cells[5].Text);
        objLogic.DeletePassenger(PassID);
       Response.Redirect("passenger.aspx");
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        objLogic = new clsBusinessLayer();
        GridView1.EditIndex = e.NewEditIndex;
        DataBind();
       /* int index = e.RowIndex;
        int PassID = Convert.ToInt32(GridView1.Rows[index].Cells[5].Text);
        objLogic.DeletePassenger(PassID);
        Response.Redirect("passenger.aspx");*/
    }
   
}
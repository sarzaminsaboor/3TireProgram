using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data;
using System.Data.SqlClient;

public partial class UI_PrintTicket : System.Web.UI.Page
{
    clsBusinessLayer objLogic;
    protected void Page_Load(object sender, EventArgs e)
    {
        objLogic = new clsBusinessLayer();
        DetailsView1.DataSource= (DataTable)objLogic.PrintTicket(Convert.ToInt32(Request.QueryString["PassengerID"].ToString()));
        DetailsView1.DataBind();
       
        
    }
}
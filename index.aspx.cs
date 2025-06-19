using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPG1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }


        protected void btnPG2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void btnPG3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }

        protected void btnPG4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calculadora.aspx");
        }

        protected void BtnVariables_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4.aspx");
        }

        protected void btnPG5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }
    }


}
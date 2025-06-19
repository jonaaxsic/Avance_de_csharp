using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        // 🔵 Variable de instancia
        private int variableInstancia = 20;

        // 🔴 Variable estática
        private static int variableEstatica = 30;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            // 🟢 Variable local
            int variableLocal = 10;

            // Mostrar todas las variables con formato solicitado
            lblResultado.Text = $"Variable Local: {variableLocal}<br />" +
                                $"Variable de instancia: {variableInstancia}<br />" +
                                $"Variable estatica: {variableEstatica}";
        }



        protected void Btn_index_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
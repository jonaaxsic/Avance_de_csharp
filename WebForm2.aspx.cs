using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_index_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Btn_Unir_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();

            if (nombre != "" && apellido != "")
            {
                lblResultado.Text = "Nombre completo: " + nombre + " " + apellido;
            }
            else
            {
                lblResultado.Text = "Por favor ingrese ambos campos.";
            }
        }
     }
}
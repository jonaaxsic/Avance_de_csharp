using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class Formulario : System.Web.UI.Page
    { private static List<string> datosGuardados = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string edad = txtEdad.Text.Trim();

            if (!string.IsNullOrEmpty(nombre) && !string.IsNullOrEmpty(apellido) && !string.IsNullOrEmpty(edad))
            {
                string registro = $"{nombre} {apellido}, {edad} años";
                datosGuardados.Add(registro);

                lblDatos.Text = $"<div class='notification is-success'>Datos guardados correctamente.</div>";
            }
            else
            {
                lblDatos.Text = $"<div class='notification is-danger'>Por favor, completa todos los campos.</div>";
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            if (datosGuardados.Count == 0)
            {
                lblDatos.Text = "<li>No hay datos guardados aún.</li>";
                return;
            }

            string listaHtml = "";
            foreach (var item in datosGuardados)
            {
                listaHtml += $"<li>{item}</li>";
            }

            lblDatos.Text = listaHtml;
        }

    

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirige a la página principal (index.aspx)
            Response.Redirect("index.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                string entrada = txtNumeros.Text;
                int[] numeros = entrada.Split('-').Select(n => int.Parse(n)).ToArray();

                int suma = numeros.Sum();
                double promedio = numeros.Average();

                lblSuma.Text = "Suma: " + suma;
                lblPromedio.Text = "Promedio: " + promedio.ToString("0.##");
            }
            catch
            {
                lblSuma.Text = "Error: Ingresa números válidos separados por guiones.";
                lblPromedio.Text = "";
            }


        }


        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirige a la página principal (index.aspx)
            Response.Redirect("index.aspx");
        }

    }
}
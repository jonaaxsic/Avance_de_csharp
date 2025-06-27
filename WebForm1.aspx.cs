using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                // Intenta convertir los textos a double
                double eva1 = Convert.ToDouble(txtEva1.Text);
                double eva2 = Convert.ToDouble(txtEva2.Text);
                double eva3 = Convert.ToDouble(txtEva3.Text);
                double epe1 = Convert.ToDouble(txtEpe1.Text);
                double epe2 = Convert.ToDouble(txtEpe2.Text);
                double epe3 = Convert.ToDouble(txtEpe3.Text);

                // Definición de las ponderaciones
                double pEva1 = 0.07;
                double pEva2 = 0.07;
                double pEva3 = 0.14;
                double pEpe1 = 0.07;
                double pEpe2 = 0.14;
                double pEpe3 = 0.21;

                // Suma ponderada
                double sumaPonderada = (eva1 * pEva1) + (eva2 * pEva2) + (eva3 * pEva3) +
                                       (epe1 * pEpe1) + (epe2 * pEpe2) + (epe3 * pEpe3);

                
                double notaPresentacion = sumaPonderada / 0.70;

                lblResultado.Text = "Nota de Presentación: " + notaPresentacion.ToString("N2");

                // Asignar color según la nota de presentación
                if (notaPresentacion >= 4.0)
                {
                    lblResultado.CssClass = "title is-4 has-text-success"; // Verde para aprobado
                }
                else
                {
                    lblResultado.CssClass = "title is-4 has-text-danger"; // Rojo para reprobado
                }
            }
            catch (FormatException)
            {
                lblResultado.Text = "Por favor, ingresa solo números válidos para las notas.";
                lblResultado.CssClass = "title is-4 has-text-warning"; // Naranja para advertencia
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Ocurrió un error: " + ex.Message;
                lblResultado.CssClass = "title is-4 has-text-danger";
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirige a la página principal (index.aspx)
            Response.Redirect("index.aspx");
        }
    }





}

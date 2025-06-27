using System;
using System.Web.UI;

namespace miApp
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirige a la página principal (index.aspx)
            Response.Redirect("index.aspx");
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double num1, num2, resultado = 0;
            string operacion = ddlOperacion.SelectedValue;

            if (double.TryParse(txtNumero1.Text, out num1) && double.TryParse(txtNumero2.Text, out num2))
            {
                switch (operacion)
                {
                    case "+":
                        resultado = num1 + num2;
                        break;
                    case "-":
                        resultado = num1 - num2;
                        break;
                    case "*":
                        resultado = num1 * num2;
                        break;
                    case "/":
                        if (num2 != 0)
                            resultado = num1 / num2;
                        else
                        {
                            lblResultado.Text = "Error: División por cero";
                            return;
                        }
                        break;
                }

                lblResultado.Text = "Resultado: " + resultado.ToString("F2");
            }
            else
            {
                lblResultado.Text = "Ingrese valores numéricos válidos.";
            }
        }
    }
}
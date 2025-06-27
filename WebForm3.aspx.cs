using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace miApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirige a la página principal (index.aspx)
            Response.Redirect("index.aspx");
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string nombre = txtName.Text;
            string apellido = txtLastName.Text;
            string telefono = txtPhone.Text;
            string email = txtEmail.Text;
            string direccion = txtAddress.Text;
            string mensaje = txtMessage.Text;

            string outputMessage = string.Format(
                "Su mensaje fue enviado.<br />" +
                "Nombre: {0} {1}<br />" +
                "Teléfono: {2}<br />" +
                "Dirección: {3}<br />" +
                "Su mensaje fue: {4}",
                nombre,
                apellido,
                telefono,
                direccion,
                mensaje
            );

            litMessageOutput.Text = outputMessage;
            pnlMessageOutput.Visible = true;
        }




    }
}
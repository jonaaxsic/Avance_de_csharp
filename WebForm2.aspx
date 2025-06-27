<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="miApp.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nombre y Apellido</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40JuKCqigbGd4xlt+wl3I5/sYJL+XhksM7rRkG/xMwtjI+s0zD/eR3/U4r9N8J6hN2W4/s/mBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
<body class="is-flex is-flex-direction-column min-vh-100 has-background-white-bis has-text-black">
    <form id="form1" runat="server" class="is-flex is-flex-grow-1 is-flex-direction-column">

          <div class="container is-max-desktop py-6">
      <div class="is-flex is-justify-content-flex-end" style="margin-bottom: 1rem;">
          <button id="themeToggleButton" class="button is-light is-outlined is-small">
              <span class="icon">
                  <i class="fas fa-moon"></i>
              </span>
              <span id="themeButtonText">Modo Oscuro</span>
          </button>
      </div>
        <div class="container is-flex is-flex-grow-1 is-align-items-center is-justify-content-center py-5">
            <div class="box mx-auto shadow-sm" style="max-width: 600px; width: 100%;">
                <div class="block">
                    <div class="has-text-centered pb-4"> <%-- Usamos pb-4 de Bulma para padding-bottom --%>
                        <h2 class="title is-2 has-text-weight-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                        <h5 class="subtitle is-5 has-text-grey">Concatenar Nombre</h5>
                        <img src="IMG/IPCHILE.png" class="image is-128x128 mx-auto my-3" alt="Logo IPCHILE" />
                    </div>

                    <div class="field pb-3"> <%-- Padding inferior para el campo --%>
                        <label for="txtNombre" class="label">Ingrese su nombre:</label>
                        <div class="control">
                            <asp:TextBox ID="txtNombre" runat="server" placeholder="Ej: Juan" CssClass="input" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtApellido" class="label">Ingrese su apellido:</label>
                        <div class="control">
                            <asp:TextBox ID="txtApellido" runat="server" placeholder="Ej: Pérez" CssClass="input" />
                        </div>
                    </div>

                    <div class="field pb-4"> <%-- Padding inferior para el campo de resultado --%>
                        <div class="control">
                            <asp:Label ID="lblResultado" runat="server" CssClass="input is-static has-text-primary has-text-weight-bold" />
                        </div>
                    </div>

                    <div class="field is-grouped is-justify-content-center"> <%-- Centrar botones --%>
                        <div class="control">
                            <asp:Button ID="Btn_Unir" runat="server" Text="Concatenar" CssClass="button is-primary" OnClick="Btn_Unir_Click" />
                        </div>
                        <div class="control">
                            <%-- ID cambiado a btnVolver para que ModoOscuro.js lo gestione --%>
                           <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined is-normal" OnClick="btnVolver_Click" />s
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
 <script src="Scripts/ModoOscuro.js"></script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="miApp.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Envío Formulario</title>
    
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
            <div class="box mx-auto shadow-sm" style="max-width: 700px; width: 100%;">
                <div class="block">
                    <div class="has-text-centered pb-4">
                        <h2 class="title is-2 has-text-weight-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                        <h5 class="subtitle is-5 has-text-grey">Formulario</h5>
                        <img src="IMG/IPCHILE.png" class="image is-128x128 mx-auto my-3" alt="Logo IPCHILE" />
                        <h4 class="title is-4 mt-3">Formulario de Contacto</h4>
                    </div>

                    <div class="field pb-3">
                        <label for="txtName" class="label">Nombre:</label>
                        <div class="control">
                            <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="Ingrese su nombre" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtLastName" class="label">Apellido:</label>
                        <div class="control">
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="input" placeholder="Ingrese su apellido" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtPhone" class="label">Teléfono:</label>
                        <div class="control">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="input" placeholder="Ingrese su teléfono" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtEmail" class="label">Email:</label>
                        <div class="control">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input" placeholder="Ingrese su email" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtAddress" class="label">Dirección:</label>
                        <div class="control">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="input" placeholder="Ingrese su dirección" />
                        </div>
                    </div>
                    <div class="field pb-3">
                        <label for="txtMessage" class="label">Descripción del Problema (Mensaje):</label>
                        <div class="control">
                            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="textarea" placeholder="Describa su problema aquí..." />
                        </div>
                    </div>

                    <div class="field is-grouped is-justify-content-center pb-3">
                        <div class="control">
                            <asp:Button ID="btnSend" runat="server" Text="Enviar Mensaje" CssClass="button is-primary" OnClick="btnSend_Click" />
                        </div>
                    </div>

                    <asp:Panel ID="pnlMessageOutput" runat="server" CssClass="message is-success" Visible="false">
                        <div class="message-body">
                            <asp:Literal ID="litMessageOutput" runat="server" />
                        </div>
                    </asp:Panel>

                    <div class="field is-grouped is-justify-content-center pt-3">
                        <div class="control">
          <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined is-normal" OnClick="btnVolver_Click" />
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
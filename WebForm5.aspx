<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="miApp.WebForm5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora de Vector</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
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
        
        <section class="hero is-small">
            <div class="hero-body pt-5 pb-0">
                <div class="container has-text-centered">
                    <h1 class="title is-2 has-text-weight-bold">Jonathan Rodriguez & Yorsua Herrera</h1>
                    <h5 class="subtitle is-5 has-text-grey">Ejemplo de Arrays y Vectores</h5>
                    <img src="IMG/IPCHILE.png" class="image is-128x128 mx-auto my-3" style="max-width: 200px;" alt="Logo IPCHILE" />
                  
                </div>
            </div>
        </section>

        <section class="section is-flex is-flex-grow-1 is-align-items-center is-justify-content-center">
            <div class="container">
                <div class="box mx-auto shadow-sm" style="max-width: 600px; width: 100%;">
                    <div class="block"> <%-- card-body a block --%>
                        <div class="field pb-3"> <%-- form-label a label, mb-3 a pb-3 --%>
                            <label for="txtNumeros" class="label">Ingrese los números separados por Guión (-):</label>
                            <div class="control">
                                <asp:TextBox ID="txtNumeros" runat="server" CssClass="input" placeholder="Ej: 1-2-3-4" /> <%-- form-control mb-3 a input --%>
                            </div>
                        </div>

                        <div class="field is-grouped is-justify-content-center pb-3"> <%-- mb-3 a pb-3 y estructura de botones --%>
                            <div class="control">
                                <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="button is-primary" OnClick="btnCalcular_Click" /> <%-- btn btn-success a button is-primary --%>
                            </div>
                        </div>

                        <div class="block"> <%-- Agregamos un div block para agrupar los resultados --%>
                            <asp:Label ID="lblSuma" runat="server" CssClass="d-block fw-bold text-dark mb-2"></asp:Label> <%-- d-block fw-bold text-dark a has-text-weight-bold --%>
                            <asp:Label ID="lblPromedio" runat="server" CssClass="d-block fw-bold text-dark"></asp:Label> <%-- d-block fw-bold text-dark mb-3 a has-text-weight-bold --%>
                        </div>
                        
                        <div class="field is-grouped is-justify-content-center pt-5"> <%-- d-grid gap-2 a field is-grouped --%>
                            <div class="control">
                                <%-- ID cambiado a btnVolver para consistencia con ModoOscuro.js --%>
                                <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined" OnClick="Btn_index_Click" /> <%-- btn btn-secondary btn-sm a button is-link is-light is-outlined --%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </form>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<script src="Scripts/ModoOscuro.js"></script>
</body>
</html>

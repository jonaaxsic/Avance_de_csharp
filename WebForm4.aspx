<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="miApp.WebForm4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Variables</title>
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
            <div class="hero-body pt-5 pb-0"> <%-- padding top y bottom ajustados --%>
                <div class="container has-text-centered">
                    <h2 class="title is-2 has-text-weight-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                    <h5 class="subtitle is-5 has-text-grey">Variables</h5>
                    <img src="IMG/IPCHILE.png" class="image is-128x128 mx-auto my-3" style="max-width: 150px;" alt="Logo IPCHILE" />
                    
                </div>
            </div>
        </section>

        <section class="section is-flex is-flex-grow-1 is-align-items-center is-justify-content-center">
            <div class="container">
                <div class="box mx-auto shadow-sm" style="max-width: 600px; width: 100%;">
                    <div class="block has-text-centered">
                        <h3 class="title is-3 pb-4">Mostrar Variables</h3>

                        <div class="field pb-5"> <%-- Aumentado el padding-bottom --%>
                            <div class="control">
                                <%-- lblResultado ahora como un p para mejor renderizado de texto --%>
                                <asp:Label ID="lblResultado" runat="server" CssClass="has-text-black has-text-weight-bold has-text-centered p-4 is-block" Style="border: 1px solid #dbdbdb; border-radius: 4px;" /> 
                            </div>
                        </div>
                        
                        <div class="field is-grouped is-justify-content-center">
                            <div class="control">
                                <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Variables" CssClass="button is-success" OnClick="btnMostrar_Click" />
                            </div>
                            <div class="control">
                                <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined" OnClick="Btn_index_Click" />
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
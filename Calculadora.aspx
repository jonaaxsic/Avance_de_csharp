<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="miApp.Calculadora" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Calculadora</title>
    
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
            <div class="box mx-auto shadow" style="width: 100%; max-width: 500px;">
                <div class="block"> <%-- Agregado para envolver el contenido del card-body --%>
                    <div class="has-text-centered pb-4"> <%-- text-center a has-text-centered, mb-4 a pb-4 --%>
                        <h2 class="title is-2 has-text-weight-bold">Jonathan Rodriguez & Yorsua Herrera</h2> <%-- fw-bold a has-text-weight-bold --%>
                        <h5 class="subtitle is-5 has-text-grey">Calculadora</h5> <%-- text-muted a has-text-grey --%>
                        <img src="IMG/IPCHILE.png" class="image is-128x128 mx-auto my-3" style="max-width: 200px;" alt="Logo IPCHILE" /> <%-- img-fluid a image, my-3 a mx-auto my-3 --%>
                    </div>

                    <div class="field pb-3"> <%-- mb-3 a field pb-3 --%>
                        <label for="txtNumero1" class="label">Número 1</label> <%-- form-label a label --%>
                        <div class="control">
                            <asp:TextBox ID="txtNumero1" runat="server" CssClass="input" /> <%-- form-control a input --%>
                        </div>
                    </div>

                    <div class="field pb-3">
                        <label for="txtNumero2" class="label">Número 2</label>
                        <div class="control">
                            <asp:TextBox ID="txtNumero2" runat="server" CssClass="input" />
                        </div>
                    </div>

                    <div class="field pb-3">
                        <label for="ddlOperacion" class="label">Operación</label>
                        <div class="control">
                            <div class="select is-fullwidth"> <%-- form-select a select is-fullwidth --%>
                                <asp:DropDownList ID="ddlOperacion" runat="server"> <%-- CssClass del DropDownList se gestiona con el div select --%>
                                    <asp:ListItem Text="Sumar" Value="+" />
                                    <asp:ListItem Text="Restar" Value="-" />
                                    <asp:ListItem Text="Multiplicar" Value="*" />
                                    <asp:ListItem Text="Dividir" Value="/" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="field pb-3"> <%-- mb-3 a field pb-3 --%>
                        <div class="control">
                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="button is-primary is-fullwidth" OnClick="btnCalcular_Click" /> <%-- btn btn-primary w-100 a button is-primary is-fullwidth --%>
                        </div>
                    </div>

                    <div class="field pb-3 has-text-centered"> <%-- mb-3 text-center a field pb-3 has-text-centered --%>
                        <div class="control">
                            <asp:Label ID="lblResultado" runat="server" CssClass="title is-4 has-text-success has-text-weight-bold"></asp:Label> <%-- fw-bold text-success a title is-4 has-text-success has-text-weight-bold --%>
                        </div>
                    </div>

                    <div class="field has-text-centered"> <%-- text-center a field has-text-centered --%>
                        <div class="control">
                            <%-- ID cambiado a btnVolver para que ModoOscuro.js lo gestione --%>
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
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="miApp.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Calcula EPE + EVA</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40JuKCqigbGd4xlt+wl3I5/sYJL+XhksM7rRkG/xMwtjI+s0zD/eR3/U4r9N8J6hN2W4/s/mBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="has-background-white-ter is-flex is-flex-direction-column is-justify-content-center min-vh-100 p-5" data-theme="light">
    <form id="form1" runat="server">
        <div class="container is-max-desktop py-6">
            <div class="is-flex is-justify-content-flex-end" style="margin-bottom: 1rem;">
                <button id="themeToggleButton" class="button is-light is-outlined is-small">
                    <span class="icon">
                        <i class="fas fa-moon"></i>
                    </span>
                    <span id="themeButtonText">Modo Oscuro</span>
                </button>
            </div>

            <div class="box has-background-white-bis p-5 is-shadowless">
                <h2 class="title is-4 has-text-black mb-4" id="mainTitleWebForm1">Calculadora de Notas EPE + EVA</h2>
                <p class="subtitle is-6 has-text-grey mb-5" id="subtitleWebForm1">Introduce tus notas para calcular tu promedio final.</p>

                <div class="columns">
                    <div class="column">
                        <div class="field">
                            <label class="label has-text-black">Nota EVA 1:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEva1" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>

                        <div class="field">
                            <label class="label has-text-black">Nota EVA 2:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEva2" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>

                        <div class="field">
                            <label class="label has-text-black">Nota EVA 3:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEva3" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="column">
                        <div class="field">
                            <label class="label has-text-black">Nota EPE 1:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEpe1" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>

                        <div class="field">
                            <label class="label has-text-black">Nota EPE 2:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEpe2" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>

                        <div class="field">
                            <label class="label has-text-black">Nota EPE 3:</label>
                            <div class="control">
                                <asp:TextBox ID="txtEpe3" runat="server" CssClass="input is-primary"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="field is-grouped is-grouped-centered mt-5">
                    <div class="control">
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="button is-white is-outlined is-normal" OnClick="btnCalcular_Click" />
                    </div>
                    <div class="control">
                        <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined is-normal" OnClick="btnVolver_Click" />
                    </div>
                </div>

                <div class="has-text-centered mt-5">
                    <asp:Label ID="lblResultado" runat="server" CssClass="title is-4 has-text-black"></asp:Label>
                </div>
            </div>
        </div>
    </form>

    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
    <script src="Scripts/ModoOscuro.js"></script>
</body>
</html>
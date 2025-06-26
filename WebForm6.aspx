<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="miApp.WebForm6" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Formulario de Ingreso</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body class="has-background-white-bis has-text-black is-flex is-flex-direction-column min-vh-100">
    <form id="form1" runat="server" class="is-flex is-flex-grow-1 is-flex-direction-column is-justify-content-center is-align-items-center p-4">
        <div class="is-flex is-justify-content-flex-end is-align-self-stretch" style="margin-bottom: 1rem; position: absolute; top: 1rem; right: 1rem;">
            <button id="themeToggleButton" class="button is-dark is-outlined is-small">
                <span class="icon">
                    <i id="themeIcon" class="fas fa-moon"></i>
                </span>
                <span id="themeButtonText">Modo Oscuro</span>
            </button>
        </div>

        <div class="box p-5 has-text-centered has-shadow-is-large has-background-white-ter card-item"
             data-background-class="has-background-white-ter" data-text-class="has-text-black"
             style="max-width: 500px; width: 100%;">

            <h1 class="title is-4 has-text-black mb-4">Formulario de Ingreso</h1>
            <p class="subtitle is-6 has-text-grey mb-5">Ingrese los datos personales</p>

            <div class="field is-horizontal">
                <div class="field-label is-normal">
                    <label class="label has-text-black">Nombre:</label>
                </div>
                <div class="field-body">
                    <div class="field">
                        <p class="control">
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="input" placeholder="Ej: Juan"></asp:TextBox>
                        </p>
                    </div>
                </div>
            </div>

            <div class="field is-horizontal">
                <div class="field-label is-normal">
                    <label class="label has-text-black">Apellido:</label>
                </div>
                <div class="field-body">
                    <div class="field">
                        <p class="control">
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="input" placeholder="Ej: Pérez"></asp:TextBox>
                        </p>
                    </div>
                </div>
            </div>

            <div class="field is-horizontal">
                <div class="field-label is-normal">
                    <label class="label has-text-black">Edad:</label>
                </div>
                <div class="field-body">
                    <div class="field">
                        <p class="control">
                            <asp:TextBox ID="txtEdad" runat="server" CssClass="input" TextMode="Number" min="0" max="150"></asp:TextBox>
                        </p>
                    </div>
                </div>
            </div>

            <div class="message is-info is-small mt-4" runat="server" id="divMensaje" style="display: none;">
                <div class="message-body">
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <div class="buttons is-centered mt-5">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" CssClass="button is-success is-large" OnClick="btnGuardar_Click" />
                <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" CssClass="button is-info is-large" OnClick="btnMostrarTodos_Click" />
                <asp:Button ID="btnVolver" runat="server" Text="Volver a Inicio" CssClass="button is-link is-light is-large" OnClick="btnVolver_Click" />
            </div>

            <div class="content has-text-left mt-5" runat="server" id="divDatosAlmacenados" style="display: none;">
                <p class="title is-6 has-text-black">Datos almacenados:</p>
                <asp:Label ID="lblDatosAlmacenados" runat="server" CssClass="has-text-grey-dark"></asp:Label>
            </div>
            
        </div>
    </form>
    <script src="Scripts/ModoOscuro.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
</body>
</html>
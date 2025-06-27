<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="miApp.Formulario" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario de Ingreso</title>
    <link href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" rel="stylesheet" />
</head>
<body>
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
    </div>
        <section class="section">
            <div class="container">
                <h3 class="title is-4 is-light ">Formulario de Ingreso</h3>

                <div class="field">
                    <label class="label">Nombre:</label>
                    <div class="control">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="input" />
                    </div>
                </div>

                <div class="field">
                    <label class="label">Apellido:</label>
                    <div class="control">
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="input" />
                    </div>
                </div>

                <div class="field">
                    <label class="label">Edad:</label>
                    <div class="control">
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="input" />
                    </div>
                </div>

                <div class="field is-grouped mt-4">
                    <div class="control">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar Datos" CssClass="button is-primary" OnClick="btnGuardar_Click" />
                    </div>
                    <div class="control">
                        <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Todos" CssClass="button is-link" OnClick="btnMostrar_Click" />
                    </div>
                    <div class="control">
                        <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-light" OnClick="btnVolver_Click" />
                    </div>
                </div>

                <div class="box mt-5">
                    <h4 class="subtitle is-5">Listado de Datos:</h4>
                    <div class="content">
                        <ul>
                            <asp:Label ID="lblDatos" runat="server" />
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </form>
     <script defer="defer" src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
 <script src="Scripts/ModoOscuro.js"></script>
</body>
</html>
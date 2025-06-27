<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="miApp.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>EPE 3</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body class="has-background-white-bis has-text-black is-flex is-flex-direction-column min-vh-100 p-5" data-theme="light">
    <form id="form1" runat="server" class="is-flex is-flex-grow-1 is-flex-direction-column">
        <div class="container is-max-desktop py-6 is-flex is-flex-grow-1 is-flex-direction-column is-justify-content-space-between">
            <div class="is-flex is-flex-direction-column is-align-items-center mb-6">
                <div style="width: 100%; display: flex; justify-content: flex-end; margin-bottom: 1rem;">
                    <button id="themeToggleButton" class="button is-dark is-outlined is-small">
                        <span class="icon">
                            <i class="fas fa-moon" id="themeIcon"></i> <%-- ID para manipular el ícono con JS --%>
                        </span>
                        <span id="themeButtonText">Modo Oscuro</span>
                    </button>
                </div>

                <div class="has-text-centered" style="width: 100%;">
                    <h2 class="title is-2 has-text-weight-bold has-text-black mb-0" id="mainTitle">Jonathan Rodriguez & Yorsua Herrera</h2>
                    <p class="subtitle is-3 has-text-info-dark mt-2 mb-3" id="eppSubtitle">EPE 3</p>
                    <p class="subtitle is-5 has-text-grey-dark" id="pageSubtitle">Página de Inicio</p>
                    <asp:Image ID="imgIPCHILE" runat="server" ImageUrl="~/IMG/IPCHILE.png" AlternateText="Logo IPCHILE" Width="200px" CssClass="my-4" />
                </div>
            </div>

            <div class="columns is-multiline is-centered is-vcentered is-flex-grow-1"> <%-- is-flex-grow-1 para que ocupe el espacio --%>
                <%-- Opción 1: Calcula EPE + EVA --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-info-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-calculator"></i></span>
                            Calcula EPE + EVA
                        </p>
                        <p class="subtitle is-6 has-text-grey">Programa para calcular tus notas</p>
                        <asp:Button ID="BtnPG1" runat="server" Text="Ir" CssClass="button is-info is-light is-outlined is-fullwidth is-large mt-4" OnClick="BtnPG1_Click" />
                    </div>
                </div>

                <%-- Opción 2: Unión de Nombre y Apellido --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-primary-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-user-friends"></i></span>
                            Unión de Nombre y Apellido
                        </p>
                        <p class="subtitle is-6 has-text-grey">Página para unir tu nombre completo</p>
                        <asp:Button ID="btnPG2" runat="server" Text="Ir" CssClass="button is-primary is-light is-outlined is-fullwidth is-large mt-4" OnClick="btnPG2_Click" />
                    </div>
                </div>

                <%-- Opción 3: Formulario de Contacto --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-danger-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-envelope"></i></span>
                            Formulario de Contacto
                        </p>
                        <p class="subtitle is-6 has-text-grey">Página para enviar información de contacto</p>
                        <asp:Button ID="btnPG3" runat="server" Text="Ir" CssClass="button is-danger is-light is-outlined is-fullwidth is-large mt-4" OnClick="btnPG3_Click" />
                    </div>
                </div>

                <%-- Opción 4: Calculadora --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-success-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-calculator-alt"></i></span>
                            Calculadora
                        </p>
                        <p class="subtitle is-6 has-text-grey">Calculadora simple con lista desplegable</p>
                        <asp:Button ID="BtnPG4" runat="server" Text="Ir" CssClass="button is-success is-light is-outlined is-fullwidth is-large mt-4" OnClick="btnPG4_Click" />
                    </div>
                </div>

                <%-- Opción 5: Mostrar Variables --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-warning-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-code"></i></span>
                            Mostrar Variables
                        </p>
                        <p class="subtitle is-6 has-text-grey">Página para mostrar tipos de variables</p>
                        <asp:Button ID="BtnVariables" runat="server" Text="Ir" CssClass="button is-warning is-light is-outlined is-fullwidth is-large mt-4" OnClick="BtnVariables_Click" />
                    </div>
                </div>

                <%-- Opción 6: Vectores --%>
                <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
                    <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
                        <p class="title is-5 has-text-link-dark mb-3">
                            <span class="icon is-small mr-2"><i class="fas fa-vector-square"></i></span>
                            Vectores
                        </p>
                        <p class="subtitle is-6 has-text-grey">Ir a Calculadora de Vector</p>
                        <asp:Button ID="btnPG5" runat="server" Text="Ir" CssClass="button is-link is-light is-outlined is-fullwidth is-large mt-4" OnClick="btnPG5_Click" />
                    </div>
                </div>


                 <%-- Opción 6: Vectores 
 <div class="column is-one-third-desktop is-half-tablet is-full-mobile">
     <div class="box has-text-centered p-5 card-item" data-background-class="has-background-white-bis" data-text-class="has-text-black" style="min-height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
         <p class="title is-5 has-text-link-dark mb-3">
             <span class="icon is-small mr-2"><i class="fas fa-vector-square"></i></span>
             Vectores
         </p>
         <p class="subtitle is-6 has-text-grey">Ir a Calculadora de Vector</p>
         <asp:Button ID="btnPG6" runat="server" Text="Ir" CssClass="button is-link is-light is-outlined is-fullwidth is-large mt-4" OnClick="btnPG6_Click" />
     </div>
 </div>
--%>
               
            </div>
        </div>
    </form>

    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
    <script src="Scripts/ModoOscuro.js"></script> <%-- Ruta ajustada si es necesario --%>
</body>
</html>
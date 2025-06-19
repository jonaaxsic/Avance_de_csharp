<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="miApp.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>EPE 2</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">
    <form id="form1" runat="server">
        <div class="container py-5">
            <!-- Encabezado -->
            <div class="text-center mb-4">
                <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                <h5 class="text-secondary">Inicio</h5>
                <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 200px;" />
            </div>

            <!-- Cartas de opciones -->
            <div class="row justify-content-center g-4">
                <!-- Opción 1 -->
                <div class="col-md-4">
                    <div class="card shadow-sm h-100">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <h5 class="card-title">Calcula EPE + EVA</h5>
                            <p>Programa para calcular Tus notas</p>
                            <asp:Button ID="BtnPG1" runat="server" Text="Ir" CssClass="btn btn-success btn-sm mt-3 w-100" OnClick="BtnPG1_Click" />
                        </div>
                    </div>
                </div>

                <!-- Opción 2 -->
                <div class="col-md-4">
                    <div class="card shadow-sm h-100">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <h5 class="card-title">Unión de Nombre y Apellido</h5>
                            <p>Pagina para Unir tu Nombre Completo</p>
                            <asp:Button ID="btnPG2" runat="server" Text="Ir" CssClass="btn btn-dark btn-sm mt-3 w-100" OnClick="btnPG2_Click" />
                        </div>
                    </div>
                </div>

                <!-- Opción 3 -->
                <div class="col-md-4">
                    <div class="card shadow-sm h-100">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <h5 class="card-title">Formulario de Contacto</h5>
                            <p>Pagina para Enviar Informacion de contacto</p>
                            <asp:Button ID="btnPG3" runat="server" Text="Ir" CssClass="btn btn-danger btn-sm mt-3 w-100" OnClick="btnPG3_Click" />
                        </div>
                    </div>
                </div>

                <!-- Opción 4 -->
                <div class="col-md-4">
                    <div class="card shadow-sm h-100">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <h5 class="card-title">Calculadora</h5>
                            <p>Calculadora simple con lista Desplegable</p>
                            <asp:Button ID="BtnPG4" runat="server" Text="Ir" CssClass="btn btn-primary btn-sm mt-3 w-100" OnClick="btnPG4_Click" />
                        </div>
                    </div>
                </div>

                <!-- Opción 5 -->
               <div class="col-md-4">
                 <div class="card shadow-sm h-100">
                   <div class="card-body d-flex flex-column justify-content-between">
                    <h5 class="card-title">Mostrar Variables</h5>
                    <p>Pagina para Mostrar tipos de Variables Locales, Estaticas e Intancias</p>
                     <asp:Button ID="BtnVariables" runat="server" Text="Ir" CssClass="btn btn-secondary btn-sm mt-3 w-100" OnClick="BtnVariables_Click" />
                  </div>
                 </div>
             </div>



            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


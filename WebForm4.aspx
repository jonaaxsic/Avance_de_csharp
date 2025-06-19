<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="miApp.WebForm4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Variables</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">
    <form id="form1" runat="server">
        <div class="container py-5">
            <!-- Encabezado -->
            <div class="text-center mb-4">
                <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                <h5 class="text-secondary">Pagina 5</h5>
                <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 150px;" />
            </div>

            <!-- Tarjeta principal -->
            <div class="card mx-auto shadow-sm" style="max-width: 600px;">
                <div class="card-body text-center">
                    <h3 class="mb-4">Mostrar Variables</h3>

                    <!-- Texto con fondo celeste claro y letras negras -->
                    <asp:Label ID="lblResultado" runat="server" CssClass="d-block text-dark bg-white border rounded p-3 mb-3 fw-bold" />

                    <div class="d-grid gap-2">
                        <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Variables" CssClass="btn btn-success btn-sm" OnClick="btnMostrar_Click" />
                        <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="btn btn-secondary btn-sm" OnClick="Btn_index_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

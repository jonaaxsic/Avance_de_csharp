<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="miApp.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Nombre y Apellido</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">    <form id="form1" runat="server" class="w-100">
        <div class="container py-5">
            <div class="card mx-auto shadow-sm" style="max-width: 600px;">
                <div class="card-body">
                    <!-- Encabezado -->
                    <div class="text-center mb-4">
                        <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                        <h5 class="text-muted">Página 2</h5>
                        <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 150px;" />
                    </div>

                    <!-- Formulario -->
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Ingrese su nombre:</label>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Ej: Juan" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtApellido" class="form-label">Ingrese su apellido:</label>
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Ej: Pérez" CssClass="form-control" />
                    </div>

                    <!-- Resultado -->
                    <div class="mb-3">
                        <asp:Label ID="lblResultado" runat="server" CssClass="form-control-plaintext fw-bold text-primary" />
                    </div>

                    <!-- Botones -->
                    <div class="d-grid gap-2">
                        <asp:Button ID="Btn_Unir" runat="server" Text="Concatenar" CssClass="btn btn-primary btn-sm" OnClick="Btn_Unir_Click" />
                        <asp:Button ID="Btn_index" runat="server" Text="Volver al Inicio" CssClass="btn btn-secondary btn-sm" OnClick="Btn_index_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

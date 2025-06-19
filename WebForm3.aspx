<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="miApp.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Envío Formulario</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">
    <form id="form1" runat="server" class="w-100">
        <div class="container py-5">
            <div class="card mx-auto shadow-sm" style="max-width: 700px;">
                <div class="card-body">
                    <!-- Encabezado -->
                    <div class="text-center mb-4">
                        <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                        <h5 class="text-muted">Página 3</h5>
                        <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 150px;" />
                        <h4 class="mt-3">Formulario de Contacto</h4>
                    </div>

                    <!-- Campos del formulario -->
                    <div class="mb-3">
                        <label for="txtName" class="form-label">Nombre:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Ingrese su nombre" />
                    </div>
                    <div class="mb-3">
                        <label for="txtLastName" class="form-label">Apellido:</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Ingrese su apellido" />
                    </div>
                    <div class="mb-3">
                        <label for="txtPhone" class="form-label">Teléfono:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Ingrese su teléfono" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Ingrese su email" />
                    </div>
                    <div class="mb-3">
                        <label for="txtAddress" class="form-label">Dirección:</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Ingrese su dirección" />
                    </div>
                    <div class="mb-3">
                        <label for="txtMessage" class="form-label">Descripción del Problema (Mensaje):</label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Describa su problema aquí..." />
                    </div>

                    <!-- Botón enviar -->
                    <div class="d-grid gap-2 mb-3">
                        <asp:Button ID="btnSend" runat="server" Text="Enviar Mensaje" CssClass="btn btn-primary btn-sm" OnClick="btnSend_Click" />
                    </div>

                    <!-- Panel de resultado -->
                    <asp:Panel ID="pnlMessageOutput" runat="server" CssClass="alert alert-success" Visible="false">
                        <asp:Literal ID="litMessageOutput" runat="server" />
                    </asp:Panel>

                    <!-- Botón volver -->
                    <div class="d-grid gap-2">
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

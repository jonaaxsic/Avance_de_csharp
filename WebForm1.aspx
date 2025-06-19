<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="miApp.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Notas Eva y Epe</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">
    <form id="form1" runat="server" class="w-100">
        <div class="container py-5">
            <div class="card mx-auto shadow-sm" style="max-width: 600px;">
                <div class="card-body">
                    <!-- Encabezado -->
                    <div class="text-center mb-4">
                        <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                        <h5 class="text-muted">Página 1</h5>
                        <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 150px;" />
                        <h4 class="mt-3">Calcular EPE + EVA</h4>
                    </div>

                    <!-- Formulario -->
                    <div class="mb-3">
                        <label for="txtEva1" class="form-label">EVA1:</label>
                        <asp:TextBox ID="txtEva1" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEva2" class="form-label">EVA2:</label>
                        <asp:TextBox ID="txtEva2" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEva3" class="form-label">EVA3:</label>
                        <asp:TextBox ID="txtEva3" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEpe1" class="form-label">EPE1:</label>
                        <asp:TextBox ID="txtEpe1" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEpe2" class="form-label">EPE2:</label>
                        <asp:TextBox ID="txtEpe2" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="txtEpe3" class="form-label">EPE3:</label>
                        <asp:TextBox ID="txtEpe3" runat="server" CssClass="form-control" />
                    </div>

                    <!-- Resultado -->
                    <div class="mb-3">
                        <label class="form-label">Resultado:</label>
                        <asp:Label ID="lblResultado" runat="server" CssClass="form-control-plaintext fw-bold text-primary" />
                    </div>

                    <!-- Botones -->
                    <div class="d-grid gap-2">
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-success btn-sm" OnClick="btnCalcular_Click" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="miApp.WebForm5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora de Vector</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-info-subtle">
    <form id="form1" runat="server">
        <div class="container py-5">
            <div class="text-center mb-4">
                <h1 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h1>
                <h5 class="text-secondary">Ejemplo de Arrays y Vectores</h5>
                <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 200px;" />
            </div>

            <div class="card mx-auto shadow-sm" style="max-width: 600px;">
                <div class="card-body">
                    <label for="txtNumeros" class="form-label">Ingrese los números separados por Guión (-):</label>
                    <asp:TextBox ID="txtNumeros" runat="server" CssClass="form-control mb-3" placeholder="Ej: 1-2-3-4" />

                    <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-success mb-3" OnClick="btnCalcular_Click" />

                    <asp:Label ID="lblSuma" runat="server" CssClass="d-block fw-bold text-dark"></asp:Label>
                    <asp:Label ID="lblPromedio" runat="server" CssClass="d-block fw-bold text-dark mb-3"></asp:Label>

                    <div class="d-grid gap-2">
                     <asp:Button ID="Btn_index" runat="server" Text="Volver al Inicio" CssClass="btn btn-secondary btn-sm" OnClick="Btn_index_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
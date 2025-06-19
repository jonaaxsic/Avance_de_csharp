<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="miApp.Calculadora" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Calculadora</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="min-vh-100" style="background: linear-gradient(to right, #5d6d7e , #d5d8dc);">
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
            <div class="card p-4 shadow" style="width: 100%; max-width: 500px;">
                <div class="text-center">
                    <h2 class="fw-bold">Jonathan Rodriguez & Yorsua Herrera</h2>
                    <h5 class="text-muted">Página 4</h5>
                    <img src="IMG/IPCHILE.png" class="img-fluid my-3" style="max-width: 200px;" />
                </div>

                <!-- Campos de entrada -->
                <div class="mb-3">
                    <label for="txtNumero1" class="form-label">Número 1</label>
                    <asp:TextBox ID="txtNumero1" runat="server" CssClass="form-control" />
                </div>

                <div class="mb-3">
                    <label for="txtNumero2" class="form-label">Número 2</label>
                    <asp:TextBox ID="txtNumero2" runat="server" CssClass="form-control" />
                </div>

                <div class="mb-3">
                    <label for="ddlOperacion" class="form-label">Operación</label>
                    <asp:DropDownList ID="ddlOperacion" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Sumar" Value="+" />
                        <asp:ListItem Text="Restar" Value="-" />
                        <asp:ListItem Text="Multiplicar" Value="*" />
                        <asp:ListItem Text="Dividir" Value="/" />
                    </asp:DropDownList>
                </div>

                <!-- Botón calcular -->
                <div class="mb-3">
                    <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-primary w-100" OnClick="btnCalcular_Click" />
                </div>

                <!-- Resultado -->
                <div class="mb-3 text-center">
                    <asp:Label ID="lblResultado" runat="server" CssClass="fw-bold text-success"></asp:Label>
                </div>

                <!-- Botón volver -->
                <div class="text-center">
                    <asp:Button ID="Btn_index" runat="server" Text="Volver al Inicio" CssClass="btn btn-secondary" OnClick="Btn_index_Click" />
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
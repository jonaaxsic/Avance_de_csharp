<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="miApp.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>pagina 6</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.0/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40JuKCqigbGd4xlt+wl3I5/sYJL+XhksM7rRkG/xMwtjI+s0zD/eR3/U4r9N8J6hN2W4/s/mBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

       <div class="control">
    <asp:Button ID="btnVolver" runat="server" Text="Volver al Inicio" CssClass="button is-link is-light is-outlined is-normal" OnClick="btnVolver_Click" />
</div>
    </form>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<script src="Scripts/ModoOscuro.js"></script>
</body>
</html>

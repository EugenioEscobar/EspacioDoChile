<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <img src="./assets/img/EspacioDoChile-Isotipo.png" alt="Logo" class="img-fluid" height="100">
                        </div>
                        <div class="card-body">
                            <asp:Panel ID="LoginPanel" runat="server">
                                <div class="form-group">
                                    <label for="usuario">Usuario</label>
                                    <asp:TextBox ID="UsuarioTextBox" runat="server" CssClass="form-control" placeholder="Ingresa tu usuario"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="contrasena">Contraseña</label>
                                    <asp:TextBox ID="ContrasenaTextBox" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingresa tu contraseña"></asp:TextBox>
                                </div>
                                <asp:Button ID="IniciarSesionButton" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" OnClick="IniciarSesionButton_Click" />
                            </asp:Panel>
                            <asp:Label ID="MensajeLabel" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

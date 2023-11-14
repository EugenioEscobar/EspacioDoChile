<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Espacio Do Chile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <style>
        /* ROBOTOMONO-MEDIUM */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Medium.ttf') format('truetype');
            font-weight: 500;
            /* Valor típico para medium */
            font-style: normal;
        }

        /* ROBOTOMONO-BOLD */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Bold.ttf') format('truetype');
            font-weight: bold;
            font-style: normal;
        }

        /* ROBOTOMONO-BOLDITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-BoldItalic.ttf') format('truetype');
            font-weight: bold;
            font-style: italic;
        }

        /* ROBOTOMONO-EXTRALIGHT */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-ExtraLight.ttf') format('truetype');
            font-weight: 200;
            /* Valor típico para extralight */
            font-style: normal;
        }

        /* ROBOTOMONO-EXTRALIGHTITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-ExtraLightItalic.ttf') format('truetype');
            font-weight: 200;
            /* Valor típico para extralight */
            font-style: italic;
        }

        /* ROBOTOMONO-ITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Italic.ttf') format('truetype');
            font-weight: normal;
            font-style: italic;
        }

        /* ROBOTOMONO-LIGHT */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Light.ttf') format('truetype');
            font-weight: 300;
            /* Valor típico para light */
            font-style: normal;
        }

        /* ROBOTOMONO-LIGHTITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-LightItalic.ttf') format('truetype');
            font-weight: 300;
            /* Valor típico para light */
            font-style: italic;
        }

        /* ROBOTOMONO-MEDIUMITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-MediumItalic.ttf') format('truetype');
            font-weight: 500;
            /* Valor típico para medium */
            font-style: italic;
        }

        /* ROBOTOMONO-REGULAR */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Regular.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }

        /* ROBOTOMONO-SEMIBOLD */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-SemiBold.ttf') format('truetype');
            font-weight: 600;
            /* Valor típico para semibold */
            font-style: normal;
        }

        /* ROBOTOMONO-SEMIBOLDITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-SemiBoldItalic.ttf') format('truetype');
            font-weight: 600;
            /* Valor típico para semibold */
            font-style: italic;
        }

        /* ROBOTOMONO-THIN */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-Thin.ttf') format('truetype');
            font-weight: 100;
            /* Valor típico para thin */
            font-style: normal;
        }

        /* ROBOTOMONO-THINITALIC */
        @font-face {
            font-family: 'Roboto Mono';
            src: url('./assets/fonts/Roboto_Mono/static/RobotoMono-ThinItalic.ttf') format('truetype');
            font-weight: 100;
            /* Valor típico para thin */
            font-style: italic;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <img src="Content/img/EspacioDoChile-Isotipo.png" alt="Logo" class="img-fluid" height="100" />
                        </div>
                        <div class="card-body">
                            <asp:Panel ID="LoginPanel" runat="server">
                                <div class="form-group mt-3">
                                    <label for="usuario">Usuario</label>
                                    <asp:TextBox ID="UsuarioTextBox" runat="server" CssClass="form-control" placeholder="Ingresa tu usuario"></asp:TextBox>
                                </div>
                                <div class="form-group mt-3">
                                    <label for="contrasena">Contraseña</label>
                                    <asp:TextBox ID="ContrasenaTextBox" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingresa tu contraseña"></asp:TextBox>
                                </div>
                                <asp:Button ID="IniciarSesionButton" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary mt-3" OnClick="IniciarSesionButton_Click" />
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

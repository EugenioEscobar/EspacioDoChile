<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristRegistrarse.aspx.cs" Inherits="TouristRegistrarse"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        Registro de Usuario
                    </div>
                    <div class="card-body">
                        <!-- Identificador -->
                        <div class="form-group mt-2">
                            <label for="txtIdentificador">Identificador (RUT, DNI, etc.)</label>
                            <asp:TextBox ID="txtIdentificador" runat="server" CssClass="form-control" placeholder="12345678-9"></asp:TextBox>
                        </div>
                        <!-- Email -->
                        <div class="form-group mt-2">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Introduce tu email" required></asp:TextBox>
                        </div>

                        <!-- Contraseña -->
                        <div class="form-group mt-2">
                            <label for="txtPassword">Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Introduce tu contraseña"></asp:TextBox>
                        </div>

                        <!-- Nombre -->
                        <div class="form-group mt-2">
                            <label for="txtNombre">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Introduce tu nombre"></asp:TextBox>
                        </div>

                        <!-- Segundo Nombre -->
                        <div class="form-group mt-2">
                            <label for="txtSegNombre">Segundo Nombre</label>
                            <asp:TextBox ID="txtSegNombre" runat="server" CssClass="form-control" placeholder="Introduce tu segundo nombre"></asp:TextBox>
                        </div>

                        <!-- Apellido -->
                        <div class="form-group mt-2">
                            <label for="txtApellido">Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Introduce tu apellido"></asp:TextBox>
                        </div>

                        <!-- Segundo Apellido -->
                        <div class="form-group mt-2">
                            <label for="txtSegApellido">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegApellido" runat="server" CssClass="form-control" placeholder="Introduce tu segundo apellido"></asp:TextBox>
                        </div>

                        <!-- Teléfono -->
                        <div class="form-group mt-2">
                            <label for="txtTelefono">Teléfono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Introduce tu teléfono" TextMode="Number"></asp:TextBox>
                        </div>

                        <!-- Dirección -->
                        <div class="form-group mt-2">
                            <label for="txtDireccion">Dirección</label>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Introduce tu dirección"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Green"></asp:Label>
                        <br />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary mt-4" Text="Registrar" OnClick="btnRegistrar_Click" OnClientClick="validarCampos();"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function validarRUT(rut) {
            // Expresión regular para validar el formato del RUT (ej: 12345678-9 o 12345678-K)
            var regex = /^\d{7,8}-[0-9Kk]$/;

            // Verificar el formato del RUT
            if (!regex.test(rut)) {
                return false; // Formato incorrecto
            }

            // Separar el cuerpo del dígito verificador
            var partes = rut.split('-');
            var cuerpo = partes[0];
            var dv = partes[1].toUpperCase(); // Convertir a mayúscula para estandarizar

            // Calcular el dígito verificador
            var suma = 0;
            var multiplicador = 2;

            for (var i = cuerpo.length - 1; i >= 0; i--) {
                suma += multiplicador * cuerpo.charAt(i);
                multiplicador = (multiplicador == 7) ? 2 : multiplicador + 1;
            }

            var dvCalculado = 11 - (suma % 11);
            if (dvCalculado == 11) {
                dvCalculado = '0';
            } else if (dvCalculado == 10) {
                dvCalculado = 'K';
            } else {
                dvCalculado = dvCalculado.toString();
            }

            // Comparar el DV calculado con el DV ingresado
            return dv === dvCalculado;
        }
        function validarCampos(e) {
            console.log("validacion");
            var rut = document.getElementById('txtIdentificador').value;
            if (validarRUT(rut)) {
                return true;
            } else {
                alert("");
                rut.focus();
                return false;
            }
        }
    </script>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristCotizador.aspx.cs" Inherits="TouristCotizador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <!-- Formulario de Cotización de alojamiento -->
                <div class="row mt-5">
                    <div class="col-md-12 mt-5">
                        <h2>Formulario de Cotización</h2>
                    </div>
                    <div class="col-md-12 mt-4">
                        <div class="row">
                            <div class="col-5">
                                <div class="mb-3">
                                    <label for="fecha-llegada" class="form-label">Fecha de Llegada</label>
                                    <asp:TextBox ID="txtFechaLlegada" runat="server" CssClass="form-control" type="date" required="required"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-5">
                                <div class="mb-3">
                                    <label for="fecha-salida" class="form-label">Fecha de Salida</label>
                                    <asp:TextBox ID="txtFechaSalida" runat="server" CssClass="form-control" type="date" required="required"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col">
                                <div class="mb-3">
                                    <label for="cantidad-huespedes" class="form-label">N° Huéspedes</label>
                                    <asp:DropDownList ID="ddlCantidadHuespedes" runat="server" CssClass="form-control" required="required"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="solicitudes-especiales" class="form-label">Solicitudes Especiales o Comentarios</label>
                            <asp:TextBox ID="txtSolicitudesEspeciales" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div class="row mt-5">
                    <div class="col-md-12">
                        <h2>Resumen de la Cotización</h2>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Detalles de la Cotización</h5>
                                <ul>
                                    <li><strong>Fecha de Llegada:</strong> <span
                                        id="resumen-fecha-llegada">[Fecha]</span></li>
                                    <li><strong>Fecha de Salida:</strong> <span id="resumen-fecha-salida">[Fecha]</span>
                                    </li>
                                    <li><strong>Cantidad de Huéspedes:</strong> <span
                                        id="resumen-cantidad-huespedes">[Cantidad]</span></li>
                                    <li><strong>Solicitudes Especiales:</strong> <span
                                        id="resumen-solicitudes-especiales">[Solicitudes]</span></li>
                                    <li><strong>Cantidad de días:</strong> <span
                                        id="resumen-cantidad-dias">[Dias]</span></li>
                                    <li><strong>Valor por Noche:</strong> <span
                                        id="resumenValorNoche" runat="server">[Valor Noche]</span></li>
                                </ul>
                                <asp:HiddenField ID="hdnPrecioPorNoche" runat="server" Value="20000" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Precio Total</h5>
                                <p><strong>Total a Pagar:</strong> <span id="precio-total">$0</span></p>
                                <asp:HiddenField ID="hdnTotalAPagar" runat="server"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-12">
                        <h2>Información de Contacto del Usuario</h2>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" required="true" Enabled="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" required="true" Enabled="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Correo Electrónico</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="true" Enabled="false"></asp:TextBox>
                    </div>
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Button ID="btnEnviar" runat="server" Text="Reservar" CssClass="btn btn-primary" OnClick="btnEnviar_Click" />
                </div>

            </div>


            <!-- Row de 8 - Mas centrado -->
        </div>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    <script>
        function validarDias() {
            const fechaLlegadaEl = document.getElementById('<%= txtFechaLlegada.ClientID %>');
            const fechaSalidaEl = document.getElementById('<%= txtFechaSalida.ClientID %>');
            const fechaLlegada = fechaLlegadaEl.value;
            const fechaSalida = fechaSalidaEl.value;
            const cantidadHuespedes = document.getElementById('<%= ddlCantidadHuespedes.ClientID %>').value;
            const solicitudesEspeciales = document.getElementById('<%= txtSolicitudesEspeciales.ClientID %>').value;

            let fechaLlegadaCalculo = new Date(fechaLlegada);
            let fechaSalidaCalculo = new Date(fechaSalida);

            // Validar si la fecha de salida es anterior a la fecha de llegada
            if (fechaSalidaCalculo < fechaLlegadaCalculo) {
                alert("La fecha de salida no puede ser anterior a la fecha de llegada. Se ajustará al día siguiente de la fecha de llegada.");
                // Ajustar la fecha de salida
                fechaSalidaCalculo = new Date(fechaLlegadaCalculo.getTime() + (1000 * 60 * 60 * 24));
                fechaSalidaEl.value = fechaSalidaCalculo.toISOString().split('T')[0];
            }
        }

        document.getElementById('<%= txtFechaLlegada.ClientID %>').addEventListener("input", validarDias);
        document.getElementById('<%= txtFechaSalida.ClientID %>').addEventListener("input", validarDias);
    </script>
    <!-- Función para calcular el precio total -->
    <script>
        // Función para calcular el precio total
        function calcularPrecio() {
            // Obtener las fechas de llegada y salida
            const fechaLlegada = new Date(document.getElementById('<%= txtFechaLlegada.ClientID %>').value);
            const fechaSalida = new Date(document.getElementById('<%= txtFechaSalida.ClientID %>').value);

            // Obtener la cantidad de huéspedes
            const cantidadHuespedes = parseInt(document.getElementById('<%= ddlCantidadHuespedes.ClientID %>').value);

            // Realizar el cálculo del precio
            // Obtener el valor de precioPorNoche desde el HiddenField
            const precioPorNoche = parseInt(document.getElementById('<%= hdnPrecioPorNoche.ClientID %>').value);
            const dias = Math.ceil((fechaSalida - fechaLlegada) / (1000 * 60 * 60 * 24)); // Calcular los días de estancia
            let precioTotal = precioPorNoche * dias * cantidadHuespedes;

            // Actualizar el elemento HTML con el precio total
            precioTotal = precioTotal ? precioTotal : 0;
            document.getElementById("precio-total").textContent = `$${precioTotal}`;
            document.getElementById('<%= hdnTotalAPagar.ClientID %>').value = precioTotal;
        }


        // Escuchar cambios en los campos de fecha y cantidad de huéspedes
        document.getElementById('<%= txtFechaLlegada.ClientID %>').addEventListener("input", calcularPrecio);
        document.getElementById('<%= txtFechaSalida.ClientID %>').addEventListener("input", calcularPrecio);
        document.getElementById('<%= ddlCantidadHuespedes.ClientID %>').addEventListener("input", calcularPrecio);

        // Inicialmente, calcula el precio
        calcularPrecio();
    </script>

    <!-- Función para llenar los detalles de la cotización -->
    <script>
        // Función para llenar los detalles de la cotización
        function llenarDetallesCotizacion() {
            // Obtener los valores del formulario
            const fechaLlegadaEl = document.getElementById('<%= txtFechaLlegada.ClientID %>');
            const fechaSalidaEl = document.getElementById('<%= txtFechaSalida.ClientID %>');
            const fechaLlegada = fechaLlegadaEl.value;
            const fechaSalida = fechaSalidaEl.value;
            const cantidadHuespedes = document.getElementById('<%= ddlCantidadHuespedes.ClientID %>').value;
            const solicitudesEspeciales = document.getElementById('<%= txtSolicitudesEspeciales.ClientID %>').value;

            let fechaLlegadaCalculo = new Date(fechaLlegada);
            let fechaSalidaCalculo = new Date(fechaSalida);

            // Calcular la cantidad de días entre las fechas
            const tiempoEnMilisegundos = fechaSalidaCalculo - fechaLlegadaCalculo;
            const cantidadDias = Math.ceil(tiempoEnMilisegundos / (1000 * 60 * 60 * 24));


            // Actualizar los elementos HTML en el resumen
            document.getElementById("resumen-fecha-llegada").textContent = fechaLlegada;
            document.getElementById("resumen-fecha-salida").textContent = fechaSalida;
            document.getElementById("resumen-cantidad-huespedes").textContent = cantidadHuespedes;
            document.getElementById("resumen-solicitudes-especiales").textContent = solicitudesEspeciales;
            document.getElementById("resumen-cantidad-dias").textContent = cantidadDias;
        }

        // Escuchar cambios en los campos del formulario
        document.getElementById('<%= txtFechaLlegada.ClientID %>').addEventListener("input", llenarDetallesCotizacion);
        document.getElementById('<%= txtFechaSalida.ClientID %>').addEventListener("input", llenarDetallesCotizacion);
        document.getElementById('<%= ddlCantidadHuespedes.ClientID %>').addEventListener("input", llenarDetallesCotizacion);
        document.getElementById('<%= txtSolicitudesEspeciales.ClientID %>').addEventListener("input", llenarDetallesCotizacion);

        // Inicialmente, llenar los detalles de la cotización
        llenarDetallesCotizacion();
    </script>



</asp:Content>


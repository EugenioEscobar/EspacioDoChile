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
                        <form>
                            <div class="row">
                                <div class="col-5">
                                    <div class="mb-3">
                                        <label for="fecha-llegada" class="form-label">Fecha de Llegada</label>
                                        <input type="date" class="form-control" id="fecha-llegada" required>
                                    </div>
                                </div>
                                <div class="col-5">
                                    <div class="mb-3">
                                        <label for="fecha-salida" class="form-label">Fecha de Salida</label>
                                        <input type="date" class="form-control" id="fecha-salida" required>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="mb-3">
                                        <label for="cantidad-huespedes" class="form-label">N° Huéspedes</label>
                                        <input type="number" class="form-control" id="cantidad-huespedes" required>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="solicitudes-especiales" class="form-label">
                                    Solicitudes Especiales o
                                    Comentarios</label>
                                <textarea class="form-control" id="solicitudes-especiales" rows="3"></textarea>
                            </div>
                        </form>
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
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Precio Total</h5>
                                <p><strong>Total a Pagar:</strong> <span id="precio-total">$0</span></p>
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
                            <input type="text" class="form-control" id="nombre" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <input type="tel" class="form-control" id="telefono" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Correo Electrónico</label>
                        <input type="email" class="form-control" id="email" required>
                    </div>
                    <button type="submit" class="btn btn-primary" id="btn-imprimir">Enviar Cotización</button>
                </div>
            </div>


            <!-- Row de 8 - Mas centrado -->
        </div>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <!-- Función para calcular el precio total -->
    <script>
        // Función para calcular el precio total
        function calcularPrecio() {
            // Obtener las fechas de llegada y salida
            const fechaLlegada = new Date(document.getElementById("fecha-llegada").value);
            const fechaSalida = new Date(document.getElementById("fecha-salida").value);

            // Obtener la cantidad de huéspedes
            const cantidadHuespedes = parseInt(document.getElementById("cantidad-huespedes").value);

            // Realizar el cálculo del precio (puedes personalizar esta lógica)
            const precioPorNoche = 20000; // Precio por noche
            const dias = Math.ceil((fechaSalida - fechaLlegada) / (1000 * 60 * 60 * 24)); // Calcular los días de estancia
            let precioTotal = precioPorNoche * dias * cantidadHuespedes;

            // Actualizar el elemento HTML con el precio total
            console.log(precioTotal);
            precioTotal = precioTotal ? precioTotal : 0;
            document.getElementById("precio-total").textContent = `$${precioTotal}`;
        }

        // Escuchar cambios en los campos de fecha y cantidad de huéspedes
        document.getElementById("fecha-llegada").addEventListener("input", calcularPrecio);
        document.getElementById("fecha-salida").addEventListener("input", calcularPrecio);
        document.getElementById("cantidad-huespedes").addEventListener("input", calcularPrecio);

        // Inicialmente, calcula el precio
        calcularPrecio();
    </script>
    <!-- Función para llenar los detalles de la cotización -->
    <script>
        // Función para llenar los detalles de la cotización
        function llenarDetallesCotizacion() {
            // Obtener los valores del formulario
            const fechaLlegada = document.getElementById("fecha-llegada").value;
            const fechaSalida = document.getElementById("fecha-salida").value;
            const cantidadHuespedes = document.getElementById("cantidad-huespedes").value;
            const solicitudesEspeciales = document.getElementById("solicitudes-especiales").value;

            // Actualizar los elementos HTML en el resumen
            document.getElementById("resumen-fecha-llegada").textContent = fechaLlegada;
            document.getElementById("resumen-fecha-salida").textContent = fechaSalida;
            document.getElementById("resumen-cantidad-huespedes").textContent = cantidadHuespedes;
            document.getElementById("resumen-solicitudes-especiales").textContent = solicitudesEspeciales;
        }

        // Escuchar cambios en los campos del formulario
        document.getElementById("fecha-llegada").addEventListener("input", llenarDetallesCotizacion);
        document.getElementById("fecha-salida").addEventListener("input", llenarDetallesCotizacion);
        document.getElementById("cantidad-huespedes").addEventListener("input", llenarDetallesCotizacion);
        document.getElementById("solicitudes-especiales").addEventListener("input", llenarDetallesCotizacion);

        // Inicialmente, llenar los detalles de la cotización
        llenarDetallesCotizacion();
    </script>

    <!-- Agrega jsPDF a tu página -->

    <!-- Función para generar el PDF -->
    <script>
        // Función para generar el PDF
        function generarPDF() {
            window.print();
        }

        // Agregar un controlador de eventos al botón de impresión
        document.getElementById("btn-imprimir").addEventListener("click", generarPDF);
    </script>


</asp:Content>


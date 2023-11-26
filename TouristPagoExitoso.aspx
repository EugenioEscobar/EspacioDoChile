<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristPagoExitoso.aspx.cs" Inherits="TouristPagoExitoso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-12">
                <div class="card text-center">
                    <div class="card-header">
                        Confirmación de Reserva
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">¡Reserva Efectuada con Éxito!</h5>
                        <p class="card-text">Tu reserva ha sido confirmada. A continuación, encontrarás los detalles de tu reserva.</p>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Número de Reserva: <strong id="codReserva" runat="server">#123456</strong></li>
                            <li class="list-group-item">Fecha de Llegada: <strong id="fechaLlegada" runat="server">01/01/2024</strong></li>
                            <li class="list-group-item">Fecha de Salida: <strong id="fechaSalida" runat="server">05/01/2024</strong></li>
                            <!-- Agregar más detalles según sea necesario -->
                        </ul>
                    </div>
                    <div class="card-footer text-muted">
                        Gracias por elegirnos
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristViewBookings.aspx.cs" Inherits="TouristViewBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container mt-5">
        <!-- Encabezado -->
        <h2>Mis Reservas</h2>
        <p>Listado de todas tus reservas realizadas</p>

        <!-- Tarjetas de Reserva -->
        <div class="row">
            <asp:Repeater ID="ReservasRepeater" runat="server">
                <ItemTemplate>
                    <div class="col-md-9">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <img src="Content/img/UbicacionSinImagen.png"
                                            alt="imagen" width="400px">
                                    </div>
                                    <div class="col-6">
                                        <h5 class="card-title"><%# Eval("NombreAlojamiento") %></h5>
                                        <h6 class="card-subtitle mb-2 text-muted"><%# Eval("Comuna") %></h6>
                                        <p class="card-text"><%# Eval("Descripcion") %></p>
                                        <p class="card-text">Valor: <%# Eval("Valor") %></p>
                                        <p class="card-text">Fecha: <%# Eval("FechaInicio") %> - <%# Eval("FechaFin") %></p>
                                        <p class="card-text">Comentarios: <%# Eval("DatosReserva") %></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristZones.aspx.cs" Inherits="TouristZones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">


    <div class="container-fluid p-0">
        <!-- Sección de Banner Principal -->
        <div class="row no-gutters">
            <!-- Mitad derecha: Título y Descripción -->
            <div class="col-md-6">
                <div class="d-flex align-items-center h-100">
                    <div class="p-5">
                        <h1 class="display-4" runat="server" id="txtNombre">Lago General Carrera</h1>
                        <p class="lead" runat="server" id="txtDescripcionLarga">
                            El Lago General Carrera, con sus aguas de azules cambiantes que van desde el
                            profundo índigo hasta el turquesa deslumbrante, es un verdadero tesoro de la naturaleza
                            en la Región de Aysén, Chile.
                        </p>
                        <a href="#actividadesCollapse">
                            <button type="button" class="btn btn-warning">
                                Alojamientos
                                Cercanos</button></a>
                    </div>
                </div>
            </div>
            <!-- Mitad izquierda: Foto grande -->
            <div class="col-md-6">
                <img src="Content/img/UbicacionSinImagen.png" class="img-fluid" alt="ImagenZONA">
            </div>
        </div>
        <div class="container mt-5">
            <!-- Sección de lugares turísticos -->
            <h2 class="text-center pt-5">Lugares Turísticos Cercanos</h2>
            <div class="row">
                <asp:Repeater ID="RepeaterLugaresTuristicos" runat="server">
                    <ItemTemplate>
                        <div class="card col mx-5">
                            <img src="Content/img/UbicacionSinImagen.png" class="card-img-top" alt='<%# Eval("Nombre") %>'>
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Nombre") %></h5>
                                <p class="card-text"><%# Eval("Descripcion") %></p>
                                <div class="d-grid gap-2">
                                    <a href='<%# "TouristUbication.aspx?ubicacionId=" + Eval("IdUbicacion") %>' class="btn btn-outline-warning">VER</a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="container mt-5">
                <!-- Sección de alojamientos disponibles -->
                <h4>Alojamientos Disponibles</h4>
                <!-- Ejemplo de 5 tarjetas de alojamientos -->
                <div class="row mt-3">
                    <!-- Alojamiento 1 -->
                    <asp:Repeater ID="RepeaterAlojamientos" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6 mb-4">
                                <div class="card">
                                    <div class="row no-gutters">
                                        <div class="col-md-4">
                                            <img src="Content/img/UbicacionSinImagen.png" class="card-img" alt="Alojamiento 1">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title"><%# Eval("Nombre") %></h5>
                                                <p class="card-text"><%# Eval("Descripcion") %>.</p>
                                                <p class="card-text">
                                                    <i class="fa fa-bed"></i><%# Eval("Dorms") %> Dormitorios | <i
                                                        class="fa fa-bath"></i><%# Eval("Banios") %> Baño
                                                </p>
                                                <a href='<%# "TouristAlojamiento.aspx?alojamientoId=" + Eval("IdAlojamiento") %>'class="btn btn-primary">Ver Alojamiento</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristMain.aspx.cs" Inherits="TouristMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div id="mapa" style="height: 400px;"></div>
    <div class="row">
        <div class="col-8 mx-auto mt-4">
            <div class="input-group">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    Ubicación Turistica</button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Ubicaciones Geograficas</a></li>
                    <li><a class="dropdown-item" href="#">Sitios Turísticos</a></li>
                </ul>
                <input type="text" class="form-control" placeholder="Buscar alojamientos o lugares turísticos">
                <button class="btn btn-warning btn-lg" type="submit">
                    <i class="fas fa-search"></i>Buscar
                </button>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Sitios turísticos en [Zona 1]</h1>
        <!-- Tarjetas de sitios turísticos -->
        <div class="row d-flex align-items-stretch">
            <asp:Repeater ID="RepeaterSitiosTuristicos" runat="server">
                <ItemTemplate>
                    <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                        <div class="card h-100">
                            <img src="Content/img/EspacioDoChile-Isotipo.png" class="card-img-top" style="height: 200px" />
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("NOMBRE") %></h5>
                                <p class="card-text"><%# Eval("DESCRIPCION_CORTA") %></p>
                                <p class="card-text">Lejanía: <%# Eval("ID_COMUNA") %> kms.</p>
                                <div class="d-grid gap-2">
                                    <a href='<%# "TouristUbication.aspx?ubicacionId=" + Eval("ID") %>' class="btn btn-outline-warning">VER</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Zonas Geográficas en Chile</h1>
        <!-- Tarjetas de sitios turísticos -->
        <div class="row d-flex align-items-stretch">
            <asp:Repeater ID="RepeaterZonas" runat="server">
                <ItemTemplate>
                    <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                        <div class="card h-100">
                            <img src="Content/img/EspacioDoChile-Isotipo.png" class="card-img-top" style="height: 200px" />
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("NOMBRE") %></h5>
                                <p class="card-text"><%# Eval("DESCRIPCION_CORTA") %></p>
                                <p class="card-text">Lejanía: <%# Eval("ID_COMUNA") %> kms.</p>
                                <div class="d-grid gap-2">
                                    <a href='<%# "TouristUbication.aspx?ubicacionId=" + Eval("ID") %>' class="btn btn-outline-warning">VER</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <script>
        function inicializarMapa() {
            var coordenadas = { lat: -33.5164885, lng: -70.6245985 };
            var mapa = new google.maps.Map(document.getElementById('mapa'), {
                center: coordenadas,
                zoom: 15
            });

            var marcador = new google.maps.Marker({
                position: coordenadas,
                map: mapa,
                title: 'Ubicación del Usuario'
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=inicializarMapa" async defer></script>
</asp:Content>


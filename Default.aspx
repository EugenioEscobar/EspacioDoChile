<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="mapa" style="height: 400px;"></div>

    <div class="row">
        <div class="col-8 mx-auto mt-4">
            <div class="input-group">
                <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false">Ubicación Turistica</button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Ubicaciones Geograficas</a></li>
                    <li><a class="dropdown-item" href="#">Sitios Turísticos</a></li>
                </ul>
                <input type="text" class="form-control" placeholder="Buscar alojamientos o lugares turísticos">
                    <button class="btn btn-warning btn-lg" type="submit">
                        <i class="fas fa-search"></i> Buscar
                    </button>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Sitios turísticos en [Zona 1]</h1>
        <!-- Tarjetas de sitios turísticos -->
        <div class="row d-flex align-items-stretch">
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Catedrales de marmol</h5>
                        <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                        <p class="card-text">Lejanía: 1203 kms.</p>
                        <div class="d-grid gap-2"><a href="./UbicacionTuristica.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Catedrales de marmol</h5>
                        <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                        <p class="card-text">Lejanía: 1203 kms.</p>
                        <div class="d-grid gap-2"><a href="./UbicacionTuristica.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Catedrales de marmol</h5>
                        <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                        <p class="card-text">Lejanía: 1203 kms.</p>
                        <div class="d-grid gap-2"><a href="./UbicacionTuristica.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Catedrales de marmol</h5>
                        <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                        <p class="card-text">Lejanía: 1203 kms.</p>
                        <div class="d-grid gap-2"><a href="./UbicacionTuristica.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Zonas Geográficas en Chile</h1>
        <!-- Tarjetas de sitios turísticos -->
        <div class="row d-flex align-items-stretch">
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Lago General Carrera</h5>
                        <p class="card-text">Zona Austral</p>
                        <p class="card-text">Lejanía: 3,700 kilómetros kms.</p>
                        <div class="d-grid gap-2"><a href="./ZonasGeograficas.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Lago General Carrera</h5>
                        <p class="card-text">Zona Austral</p>
                        <p class="card-text">Lejanía: 3,700 kilómetros kms.</p>
                        <div class="d-grid gap-2"><a href="./ZonasGeograficas.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Lago General Carrera</h5>
                        <p class="card-text">Zona Austral</p>
                        <p class="card-text">Lejanía: 3,700 kilómetros kms.</p>
                        <div class="d-grid gap-2"><a href="./ZonasGeograficas.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                <div class="card h-100">
                    <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1" style="height:200px">
                    <div class="card-body">
                        <h5 class="card-title">Lago General Carrera</h5>
                        <p class="card-text">Zona Austral</p>
                        <p class="card-text">Lejanía: 3,700 kilómetros kms.</p>
                        <div class="d-grid gap-2"><a href="./ZonasGeograficas.html"
                                class="btn btn-outline-warning">VER</a></div>
                    </div>
                </div>
            </div>
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

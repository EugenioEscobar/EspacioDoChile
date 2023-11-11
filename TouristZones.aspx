<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristZones.aspx.cs" Inherits="TouristZones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">


    <div class="container-fluid p-0">
        <!-- Sección de Banner Principal -->
        <div class="row no-gutters">
            <!-- Mitad derecha: Título y Descripción -->
            <div class="col-md-6">
                <div class="d-flex align-items-center h-100">
                    <div class="p-5">
                        <h1 class="display-4">Lago General Carrera</h1>
                        <p class="lead">
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
                <img src="./assets/img/lago-general-carrera.jpg" class="img-fluid" alt="Catedrales de Mármol">
            </div>
        </div>
        <div class="container mt-5">
            <!-- Sección de lugares turísticos -->
            <h2 class="text-center pt-5">Lugares Turísticos Cercanos</h2>
            <div id="carruselTuristico" class="carousel slide mt-5" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1">
                    </button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2">
                    </button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3">
                    </button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card col mx-5">
                                <img src="./assets/img/CapillaMarmol.webp" class="card-img-top" alt="Sitio 1">
                                <div class="card-body">
                                    <h5 class="card-title">Capillas de Marmol</h5>
                                    <p class="card-text">Catedral en Puerto Río Tranquilo.</p>
                                    <div class="d-grid gap-2">
                                        <a href="./UbicacionTuristica.html" class="btn btn-outline-warning">VER</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Agrega más elementos según sea necesario -->
                </div>
                <button class="carousel-control-prev bg-dark" type="button" data-bs-target="#carruselTuristico"
                    style="width: 2rem;" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next bg-dark" type="button" data-bs-target="#carruselTuristico"
                    style="width: 2rem;" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <div class="container mt-5">
            <!-- Sección de alojamientos disponibles -->
            <h4>Alojamientos Disponibles</h4>
            <!-- Ejemplo de 5 tarjetas de alojamientos -->
            <div class="row mt-3">
                <!-- Alojamiento 1 -->
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="imagen_alojamiento_1.jpg" class="card-img" alt="Alojamiento 1">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel</h5>
                                    <p class="card-text">Una descripción breve del alojamiento.</p>
                                    <p class="card-text">
                                        <i class="fa fa-bed"></i>2 Dormitorios | <i
                                            class="fa fa-bath"></i>1 Baño
                                    </p>
                                    <a href="./Alojamiento.html" class="btn btn-primary">Ver Alojamiento</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="imagen_alojamiento_1.jpg" class="card-img" alt="Alojamiento 1">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel</h5>
                                    <p class="card-text">Una descripción breve del alojamiento.</p>
                                    <p class="card-text">
                                        <i class="fa fa-bed"></i>2 Dormitorios | <i
                                            class="fa fa-bath"></i>1 Baño
                                    </p>
                                    <a href="./Alojamiento.html" class="btn btn-primary">Ver Alojamiento</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="imagen_alojamiento_1.jpg" class="card-img" alt="Alojamiento 1">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel</h5>
                                    <p class="card-text">Una descripción breve del alojamiento.</p>
                                    <p class="card-text">
                                        <i class="fa fa-bed"></i>2 Dormitorios | <i
                                            class="fa fa-bath"></i>1 Baño
                                    </p>
                                    <a href="./Alojamiento.html" class="btn btn-primary">Ver Alojamiento</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="imagen_alojamiento_1.jpg" class="card-img" alt="Alojamiento 1">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel</h5>
                                    <p class="card-text">Una descripción breve del alojamiento.</p>
                                    <p class="card-text">
                                        <i class="fa fa-bed"></i>2 Dormitorios | <i
                                            class="fa fa-bath"></i>1 Baño
                                    </p>
                                    <a href="./Alojamiento.html" class="btn btn-primary">Ver Alojamiento</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>


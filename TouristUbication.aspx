<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristUbication.aspx.cs" Inherits="TouristUbication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container-fluid p-0">
        <!-- Sección de Banner Principal -->
        <div class="row no-gutters">
            <!-- Mitad izquierda: Foto grande -->
            <div class="col-md-6">
                <img src="./assets/img/CapillaMarmol.webp" class="img-fluid" alt="Catedrales de Mármol">
            </div>

            <!-- Mitad derecha: Título y Descripción -->
            <div class="col-md-6">
                <div class="d-flex align-items-center h-100">
                    <div class="p-5">
                        <h1 class="display-4">Catedrales de Mármol</h1>
                        <p class="lead">
                            Descubre la majestuosidad de las Catedrales de Mármol en la costa de Chile.
                            Estas formaciones naturales en el lago General Carrera son conocidas por sus impresionantes
                            cuevas de mármol y sus aguas cristalinas.
                        </p>
                        <a href="#actividadesCollapse">
                            <button type="button" class="btn btn-warning">
                                Alojamientos
                                Cercanos</button></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sección de Costos y Actividades -->
        <!-- Lista de Actividades Collapse -->
        <div class="row mt-4">
            <div class="col-md-8 offset-md-2">
                <div id="actividadesCollapse">
                    <!-- Actividad 1 -->
                    <div class="accordion" id="accordion1">
                        <div class="card mb-2">
                            <div class="card-header" id="heading1">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
                                        Paseo en bote por las cuevas
                                    </button>
                                </h5>
                            </div>

                            <div id="collapse1" class="collapse show" aria-labelledby="heading1"
                                data-bs-parent="#accordion1">
                                <div class="card-body">
                                    Descripción detallada del paseo en bote por las cuevas.
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Actividad 2 -->
                    <div class="accordion" id="accordion2">
                        <div class="card mb-2">
                            <div class="card-header" id="heading2">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                        Observación de aves
                                    </button>
                                </h5>
                            </div>
                            <div id="collapse2" class="collapse" aria-labelledby="heading2"
                                data-bs-parent="#accordion2">
                                <div class="card-body">
                                    Descripción detallada de la observación de aves.
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Actividad 3 -->
                    <div class="accordion" id="accordion3">
                        <div class="card">
                            <div class="card-header" id="heading3">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                        Senderismo en los alrededores
                                    </button>
                                </h5>
                            </div>
                            <div id="collapse3" class="collapse" aria-labelledby="heading3"
                                data-bs-parent="#accordion3">
                                <div class="card-body">
                                    Descripción detallada del senderismo en los alrededores.
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Agrega más elementos según sea necesario -->
                </div>
            </div>
        </div>


        <!-- Mensaje sobre Costos Asociados -->
        <div class="row mt-4">
            <div class="col-md-8 offset-md-2 text-center">
                <p class="text-danger">
                    <strong>Nota:</strong> Algunas actividades pueden tener costos asociados.
                    Infórmate sobre tarifas y opciones disponibles.
                </p>
            </div>
        </div>

        <!-- Sección de Pestañas -->
        <div class="row mt-4">
            <div class="col-md-8 offset-md-2">
                <!-- Pestañas -->
                <ul class="nav nav-tabs" id="tabs">
                    <li class="nav-item">
                        <a class="nav-link active" id="alojamientos-tab" data-bs-toggle="tab"
                            href="#alojamientos">Alojamientos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="reseñas-tab" data-bs-toggle="tab" href="#reseñas">Reseñas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="mapa-tab" data-bs-toggle="tab" href="#mapa">Mapa</a>
                    </li>
                </ul>
                <!-- Contenido de las Pestañas -->
                <div class="tab-content mt-2">
                    <!-- Pestaña de Alojamientos -->
                    <div class="tab-pane fade show active" id="alojamientos">
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
                                                <a href="#" class="btn btn-primary">Ver Alojamiento</a>
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
                                                <a href="#" class="btn btn-primary">Ver Alojamiento</a>
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
                                                <a href="#" class="btn btn-primary">Ver Alojamiento</a>
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
                                                <a href="#" class="btn btn-primary">Ver Alojamiento</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Pestaña de Reseñas -->
                    <div class="tab-pane fade" id="reseñas">
                        <h4>Reseñas de los Visitantes</h4>
                        <!-- Paginación -->
                        <div class="mt-4">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Reseñas -->
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <img src="imagen_usuario_1.jpg" alt="Usuario 1" class="rounded-circle mr-3"
                                        width="50" height="50">
                                    <div>
                                        <h5 class="mb-0">Usuario 1</h5>
                                        <p class="text-muted">Puntuación: 4.5/5 - 15 de octubre de 2023</p>
                                    </div>
                                </div>
                                <p class="mt-3">
                                    ¡Increíble experiencia en las Cavernas de Mármol! Definitivamente lo
                                    recomendaría a otros
                                    viajeros.
                                </p>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <img src="imagen_usuario_2.jpg" alt="Usuario 2" class="rounded-circle mr-3"
                                        width="50" height="50">
                                    <div>
                                        <h5 class="mb-0">Usuario 2</h5>
                                        <p class="text-muted">Puntuación: 5/5 - 14 de octubre de 2023</p>
                                    </div>
                                </div>
                                <p class="mt-3">
                                    ¡La belleza natural de las Cavernas de Mármol es impresionante! Una
                                    visita obligada.
                                </p>
                            </div>
                        </div>
                        <!-- Área de texto para agregar una nueva reseña -->
                        <div class="card mt-3">
                            <div class="card-body">
                                <h5 class="card-title">Agregar Nueva Reseña</h5>
                                <div class="form-group">
                                    <textarea class="form-control" rows="3"
                                        placeholder="Escribe tu reseña aquí..."></textarea>
                                </div>
                                <div class="text-right">
                                    <button class="btn btn-primary">Agregar Reseña</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pestaña de Mapa -->
                    <div class="tab-pane fade" id="mapa">
                        <h4>Mapa del Lugar Turístico</h4>
                        <iframe width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d43860.93638642587!2d-72.66498134085845!3d-46.600905493845474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xbd92f86a680a993b%3A0x8bd2ffe240014114!2sCavernas%20de%20Marmol!5e0!3m2!1sen!2sus!4v1697343905934!5m2!1sen!2sus"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sección con un carrusel de imágenes -->
        <div class="container mt-5">
            <h2 class="text-center">Imágenes del Lugar Turístico</h2>
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
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
                    <!-- Agrega más indicadores según sea necesario -->
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./assets/img/CapillaMarmol.webp" class="d-block w-100" alt="Imagen 1">
                    </div>
                    <div class="carousel-item">
                        <img src="./assets/img/EspacioDoChile-Isotipo.png" class="d-block w-100" alt="Imagen 2">
                    </div>
                    <div class="carousel-item">
                        <img src="./assets/img/EspacioDoChile-Logo_16-9.png" class="d-block w-100" alt="Imagen 3">
                    </div>
                    <!-- Agrega más elementos según sea necesario -->
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

</asp:Content>


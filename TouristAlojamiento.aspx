<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristAlojamiento.aspx.cs" Inherits="TouristAlojamiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container mt-3">
        <h1 class="display-5">Cabaña en la patagonia chilena</h1>

        <div class="row mt-5">
            <!-- Carrusel de imágenes (mitad izquierda) -->
            <div class="col-md-6">
                <div id="imagesCarousel" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./assets/img/alojamiento/comedor.webp " class="d-block mx-auto" alt="Imagen 1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/alojamiento/banio.webp" class="d-block mx-auto" alt="Imagen 1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/alojamiento/cocina.webp" class="d-block mx-auto" alt="Imagen 1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/alojamiento/living.webp" class="d-block mx-auto" alt="Imagen 1">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/img/alojamiento/dormitorio.webp" class="d-block mx-auto" alt="Imagen 1">
                        </div>
                        <!-- Agrega más imágenes del alojamiento aquí -->
                    </div>
                    <!-- Controles del carrusel -->
                    <button class="carousel-control-prev" type="button" data-bs-slide="prev"
                        data-bs-target="#imagesCarousel">
                        <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-slide="next"
                        data-bs-target="#imagesCarousel">
                        <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </div>

            <!-- Información del alojamiento (mitad derecha) -->
            <div class="col-md-6">
                <p>
                    <strong>Capacidad:</strong>
                    <asp:Label ID="lblCapacidad" runat="server" Text="6 personas"></asp:Label>
                </p>
                <p>
                    <strong>Dormitorios:</strong>
                    <asp:Label ID="lblDormitorios" runat="server" Text="3"></asp:Label>
                </p>
                <p>
                    <strong>Baños:</strong>
                    <asp:Label ID="lblBanios" runat="server" Text="2"></asp:Label>
                </p>
                <p>
                    <strong>Servicios:</strong>
                    <asp:Label ID="lblServicios" runat="server" Text="WiFi, TV, Cocina, Estacionamiento"></asp:Label>
                </p>
                <p>
                    <strong>Precio por Noche:</strong>
                    <asp:Label ID="lblPrecioNoche" runat="server" Text="$25.000"></asp:Label>
                </p>
                <asp:Button ID="btnCotizar" runat="server" Text="COTIZAR" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="row mt-5">
            <div class="col"></div>
            <div class="col-md-8">
                <h2 class="text-center pt-5">Ubicación del Alojamiento</h2>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1114.3552566577948!2d-72.67745560726017!3d-46.62522888781554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xbd925717ead0b155%3A0x6740c9f40a95e9df!2sCaba%C3%B1a%20Valle%20Exploradores!5e0!3m2!1ses-419!2scl!4v1699222819636!5m2!1ses-419!2scl"
                    width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade" class="pt-3"></iframe>
            </div>
            <div class="col"></div>
        </div>
        <div class="row mt-5">
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
                        <img src="imagen_usuario_1.jpg" alt="Usuario 1" class="rounded-circle mr-3" width="50"
                            height="50">
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
                        <img src="imagen_usuario_2.jpg" alt="Usuario 2" class="rounded-circle mr-3" width="50"
                            height="50">
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
                        <textarea class="form-control" rows="3" placeholder="Escribe tu reseña aquí..."></textarea>
                    </div>
                    <div class="text-right">
                        <button class="btn btn-primary">Agregar Reseña</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


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

        <!-- Pestaña de Reseñas -->
        <div class="row mt-3" id="reseñas">
            <h4>Reseñas de los Visitantes</h4>

            <!-- Repeater para mostrar reseñas -->
            <asp:Repeater ID="RepeaterResenas" runat="server">
                <ItemTemplate>
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <img src='<%# Eval("RUTA_IMAGEN") %>' alt='<%# Eval("NOMBRE") %>' class="rounded-circle mr-3" width="50" height="50" />
                                <div>
                                    <h5 class="mb-0"><%# Eval("NOMBRE") %></h5>
                                    <p class="text-muted">Puntuación:<%# Eval("PUNTUACION")%>-5 Fecha: <%#    Eval("FECHA") %></p>
                                </div>
                            </div>
                            <p class="mt-3"><%# Eval("DESCRIPCION") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <!-- Área de texto para agregar una nueva reseña -->
            <div class="card mt-3">
                <div class="card-body">
                    <div class="form-group">
                        <div class="">
                            <h5 class="card-title">Agregar Nueva Reseña</h5>
                        </div>
                        <label for="ddlPuntuacion">Puntuación:</label>
                        <asp:DropDownList ID="ddlPuntuacion" runat="server" CssClass="form-control">
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="2" Value="2" />
                            <asp:ListItem Text="3" Value="3" />
                            <asp:ListItem Text="4" Value="4" />
                            <asp:ListItem Text="5" Value="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group mt-2">
                        <asp:TextBox ID="txtResena" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Escribe tu reseña aquí..."></asp:TextBox>
                    </div>
                    <div class="text-right mt-2">
                        <asp:Button class="btn btn-primary" ID="btnAddResena" runat="server" OnClick="btnAddResena_Click" Text="Agregar Reseña" />
                    </div>
                </div>
            </div>
        </div>


    </div>

</asp:Content>


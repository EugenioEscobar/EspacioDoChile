<%@ Page Title="Ubicación" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristUbication.aspx.cs" Inherits="TouristUbication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container-fluid p-0">
        <!-- Sección de Banner Principal -->
        <div class="row no-gutters">
            <!-- Mitad izquierda: Foto grande -->
            <div class="col-md-6">
                <img src="~/Content/img/UbicacionSinImagen.png" class="img-fluid" alt="Catedrales de Mármol" runat="server" id="MainImage">
            </div>

            <!-- Mitad derecha: Título y Descripción -->
            <div class="col-md-6">
                <div class="d-flex align-items-center h-100">
                    <div class="p-5">
                        <h1 class="display-4" runat="server" id="TitlePage">Catedrales de Mármol</h1>
                        <p class="lead" runat="server" id="LongDescription">
                        </p>
                        <a href="#alojamientos">
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
                    <asp:Repeater ID="RepeaterActividades" runat="server">
                        <ItemTemplate>
                            <div class="accordion" id='<%# "accordion" + Container.ItemIndex %>'>
                                <div class="card mb-2">
                                    <div class="card-header" id='<%# "heading" + Container.ItemIndex %>'>
                                        <h5 class="mb-0">
                                            <button class="btn btn-link" type="button" data-bs-toggle="collapse"
                                                data-bs-target='<%# "#collapse" + Container.ItemIndex %>' aria-expanded="true"
                                                aria-controls='<%# "collapse" + Container.ItemIndex %>'>
                                                <%# Eval("DESCRIPCION_CORTA") %>
                                            </button>
                                        </h5>
                                    </div>

                                    <div id='<%# "collapse" + Container.ItemIndex %>' class="collapse"
                                        aria-labelledby='<%# "heading" + Container.ItemIndex %>' data-bs-parent='<%# "#accordion" + Container.ItemIndex %>'>
                                        <div class="card-body">
                                            <%# Eval("DESCRIPCION_LARGA") %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

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
                        <div class="row mt-3">
                            <!-- Repeater para las tarjetas de alojamiento -->
                            <asp:Repeater ID="RepeaterAlojamientos" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-6 mb-4">
                                        <div class="card">
                                            <div class="row no-gutters">
                                                <div class="col-md-4 d-flex align-items-center ">
                                                    <img src='<%# Eval("IMAGEN") %>' class="card-img" alt='<%# Eval("NOMBRE") %>' />
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body">
                                                        <h5 class="card-title"><%# Eval("NOMBRE") %></h5>
                                                        <p class="card-text"><%# Eval("DESCRIPCION_CORTA") %></p>
                                                        <p class="card-text">
                                                            <i class="fa fa-bed"></i><%# Eval("DORMITORIOS") %> Dormitorios | 
                                                            <i class="fa fa-bath"></i><%# Eval("BANIOS") %> Baño
                                                        </p>
                                                        <a href='<%# "./TouristAlojamiento.aspx?alojamientoId=" + Eval("ID") %>' class="btn btn-primary">Ver Alojamiento</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
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
                    <asp:Repeater ID="RepeaterCarouselIndicators" runat="server">
                        <ItemTemplate>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to='<%# Container.ItemIndex %>'
                                class='<%# Container.ItemIndex == 0 ? "active" : "" %>' aria-label='<%# "Slide " + (Container.ItemIndex + 1) %>'>
                            </button>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="carousel-inner">
                    <asp:Repeater ID="RepeaterCarouselImages" runat="server">
                        <ItemTemplate>
                            <div class='<%# "carousel-item" + (Container.ItemIndex == 0 ? " active" : "") %>'>
                                <img src='<%# Eval("RUTA") %>' class="d-block w-100" alt='<%# Eval("NOMBRE") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

    </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristMain.aspx.cs" Inherits="TouristMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
  <script async
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAaE5vo25XRgd_JLNsLfDPYzbjnfOvHLjM&callback=console.debug&libraries=maps,marker&v=beta">
    </script>
  <div class="div" style="height: 400px;">
    <gmp-map center="-33.490169525146484,-70.61679077148438" zoom="14" map-id="DEMO_MAP_ID" style="height: 100%;">
      <gmp-advanced-marker position="-33.490169525146484,-70.61679077148438" title="My location">
      </gmp-advanced-marker>
    </gmp-map>
  </div>
    <div class="row">
        <div class="col-8 mx-auto mt-4">
            <div class="input-group">

                <asp:DropDownList ID="ddlUbicacionTuristica" runat="server" CssClass="btn btn-outline-secondary dropdown-toggle">
                    <asp:ListItem Text="Ubicaciones Geográficas" Value="geo"></asp:ListItem>
                    <asp:ListItem Text="Sitios Turísticos" Value="sitios"></asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" placeholder="Buscar alojamientos o lugares turísticos"></asp:TextBox>

                <asp:LinkButton ID="btnBuscar" runat="server" CssClass="btn btn-warning btn-lg" OnClick="btnBuscar_Click">
                    <i class="fas fa-search"></i>Buscar
                </asp:LinkButton>

            </div>
        </div>

    </div>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Atracciones turísticas</h1>
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
                                    <a href='<%# "./TouristUbication.aspx?ubicacionId=" + Eval("ID") %>' class="btn btn-outline-warning">VER</a>
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
                                    <a href='<%# "./TouristUbication.aspx?ubicacionId=" + Eval("ID") %>' class="btn btn-outline-warning">VER</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

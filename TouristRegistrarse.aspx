<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristRegistrarse.aspx.cs" Inherits="TouristRegistrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        Registro de Usuario
                    </div>
                    <div class="card-body">
                        <!-- Identificador -->
                        <div class="form-group mt-2">
                            <label for="txtIdentificador">Identificador (RUT, DNI, etc.)</label>
                            <asp:TextBox ID="txtIdentificador" runat="server" CssClass="form-control" placeholder="Introduce tu identificador"></asp:TextBox>
                        </div>
                        <!-- Email -->
                        <div class="form-group mt-2">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Introduce tu email"></asp:TextBox>
                        </div>

                        <!-- Contraseña -->
                        <div class="form-group mt-2">
                            <label for="txtPassword">Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Introduce tu contraseña"></asp:TextBox>
                        </div>

                        <!-- Nombre -->
                        <div class="form-group mt-2">
                            <label for="txtNombre">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Introduce tu nombre"></asp:TextBox>
                        </div>

                        <!-- Segundo Nombre -->
                        <div class="form-group mt-2">
                            <label for="txtSegNombre">Segundo Nombre</label>
                            <asp:TextBox ID="txtSegNombre" runat="server" CssClass="form-control" placeholder="Introduce tu segundo nombre"></asp:TextBox>
                        </div>

                        <!-- Apellido -->
                        <div class="form-group mt-2">
                            <label for="txtApellido">Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Introduce tu apellido"></asp:TextBox>
                        </div>

                        <!-- Segundo Apellido -->
                        <div class="form-group mt-2">
                            <label for="txtSegApellido">Segundo Apellido</label>
                            <asp:TextBox ID="txtSegApellido" runat="server" CssClass="form-control" placeholder="Introduce tu segundo apellido"></asp:TextBox>
                        </div>

                        <!-- Teléfono -->
                        <div class="form-group mt-2">
                            <label for="txtTelefono">Teléfono</label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="Introduce tu teléfono"></asp:TextBox>
                        </div>

                        <!-- Dirección -->
                        <div class="form-group mt-2">
                            <label for="txtDireccion">Dirección</label>
                            <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Introduce tu dirección"></asp:TextBox>
                        </div>
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Green"></asp:Label>
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary mt-4" Text="Registrar" OnClick="btnRegistrar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


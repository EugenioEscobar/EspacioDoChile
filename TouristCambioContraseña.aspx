<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristCambioContraseña.aspx.cs" Inherits="TouristCambioContraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2 class="text-center">Cambio de Contraseña</h2>
                <div id="mensajeDiv" class="alert alert-danger" style="display: none;" runat="server"></div>
                <div class="form-group">
                    <label for="currentPassword">Contraseña Actual</label>
                    <asp:TextBox type="password" class="form-control" ID="currentPassword" runat="server" TextMode="Password" />
                </div>
                <div class="form-group">
                    <label for="newPassword">Nueva Contraseña</label>
                    <asp:TextBox type="password" class="form-control" ID="newPassword" runat="server" TextMode="Password"/>
                </div>
                <div class="form-group">
                    <label for="confirmNewPassword">Confirmar Nueva Contraseña</label>
                    <asp:TextBox type="password" class="form-control" ID="confirmNewPassword" runat="server" TextMode="Password" />
                </div>
                <asp:Button CssClass="btn btn-primary mt-4" ID="ChangePasswordButton" runat="server" Text="Cambiar Contraseña" OnClick="ChangePasswordButton_Click" OnClientClick="validarCambioDeContrasena();" />
            </div>
        </div>
    </div>
</asp:Content>


<%@ Page Title="Recuperar contraseña" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristOlvidoContraseña.aspx.cs" Inherits="TouristOlvidoContraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Recuperar Contraseña</div>
                        <div class="card-body">
                            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red" Visible="false" />
                            <div class="form-group mt-2">
                                <label for="txtEmail">Correo Electrónico:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" Required="true"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar Contraseña" CssClass="btn btn-primary mt-3" OnClick="btnRecuperar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>


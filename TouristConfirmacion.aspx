<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TouristConfirmacion.aspx.cs" Inherits="TouristConfirmacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container">
        <div class="row mt-5">
            
            <div class="col-md-6">
                <div class="row">
                    <div class="col-12">
                        <div class="card text-center">
                            <div class="card-header">
                                <h5>Detalles de la Reserva</h5>
                            </div>
                            <div class="card-body">
                                <p class="card-text">Revisa los datos de tu reserva:</p>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Alojamiento: <strong id="nombreAlojamiento" runat="server">Casa a orilla de playa</strong></li>
                                    <li class="list-group-item">Fecha de Llegada: <strong id="fechaLlegada" runat="server">01/01/2024</strong></li>
                                    <li class="list-group-item">Fecha de Salida: <strong id="fechaSalida" runat="server">05/01/2024</strong></li>
                                    <li class="list-group-item">(CLP) Total: <strong id="totalCLP" runat="server">$10.000</strong></li>
                                    <li class="list-group-item">(USD) Total: <strong id="totalUSD" runat="server">$1.05</strong></li>
                                    <!-- Agregar más detalles según sea necesario -->
                                </ul>
                            </div>
                            <div class="card-footer text-muted">
                                Paga directamente con paypal
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mt-5">
                <div id="smart-button-container">
                    <div style="text-align: center;">
                        <div id="paypal-button-container"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://www.paypal.com/sdk/js?client-id=AcMOfvPzwpyqvWUMGruQynLdBKxuKlA78YVAVkCgZVyaq-W4Z6sZEWfZJ4qTOmXIZ_OR45NZ957e9cs_&currency=USD" data-sdk-integration-source="button-factory"></script>
    <script>

        function getCookie(name) {
            const value = `; ${document.cookie}`;
            const parts = value.split(`; ${name}=`);
            if (parts.length === 2) return parts.pop().split(';').shift();
        }

        const valorArriendo = parseFloat(getCookie("ValorArriendo"));
        console.log("Valor Arriendo:");
        console.log(valorArriendo);

        const apiKey = "SgpmY4dhNnncmMRIjm9neImI5YGVTAt9";

        const requestOptions = {
            method: "GET",
            headers: {
                "apikey": apiKey,
            },
        };

        const apiUrl = "https://api.apilayer.com/exchangerates_data/latest?base=USD&symbols=CLP";
        let valorEnDolares;

        fetch(apiUrl, requestOptions)
            .then(response => response.json())
            .then(data => {
                console.log("Fetch del API:");
                console.log(data);
                console.log(data);
                const valorDolar = data.rates["CLP"];

                valorEnDolares = (valorArriendo / valorDolar).toFixed(2);

                console.log("Valor del dolar:", valorDolar);
                console.log("Valor en dólares:", valorEnDolares);
                initPayPalButton();
            })
            .catch(error => {
                console.error("Error al obtener el valor del dólar:", error);
            });

        function initPayPalButton() {
            console.log("Cantidad de USD Paypal:");
            console.log(valorEnDolares);
            paypal.Buttons({
                style: {
                    shape: 'rect',
                    color: 'gold',
                    layout: 'vertical',
                    label: 'pay',

                },

                createOrder: function (data, actions) {
                    return actions.order.create({
                        purchase_units: [{ "description": "LA DESCRIPCION DE TU PRODUCTO", "amount": { "currency_code": "USD", "value": valorEnDolares } }]
                    });
                },

                onApprove: function (data, actions) {
                    return actions.order.capture().then(function (orderData) {

                        // Full available details
                        console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                        //actions.redirect('http://localhost:49928/TouristPagoExitoso');
                        actions.redirect('https://web.espaciodochile.cl/TouristPagoExitoso.aspx');
                    });
                },

                onError: function (err) {
                    console.log(err);
                }
            }).render('#paypal-button-container');
        }
    </script>
</asp:Content>


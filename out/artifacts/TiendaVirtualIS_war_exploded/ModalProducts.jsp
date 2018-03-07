<%@page contentType="text/html" pageEncoding="UTF-8" %>
<div class="modal fade" id="catalogo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true"
     style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2 class="modal-title" id="name"></h2>
                <h1>
                    <div id="price"></div>
                </h1>
            </div>
            <div class="row">
                <h3>
                    <div id="image" class="diseño-modal"></div>
                    <div id="quantity" class="col-md-6 col-md-offset-3"></div>
                    <div id="size" class="col-md-6 col-md-offset-3"></div>
                    <div id="category" class="col-md-6 col-md-offset-3"></div>
                    <div id="type" class="col-md-6 col-md-offset-3"></div>
                    <div id="color" class="col-md-6 col-md-offset-3"></div>
                    <div id="time" class="col-md-6 col-md-offset-3"></div>
                </h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<style>
    .diseño-modal {
        text-align: center;
    }
</style>
<script>
    function showModal(code) {
        $(document).ready(function () {
            $.get('ModalController', {
                codigoProduct: code,
            }, function (res) {
                var producto = $.parseJSON(res);
                for (var i in producto) {
                    $('#name').text(producto[i].name);
                    $('#category').text("Categoria " + producto[i].category);
                    $('#type').text("Tipo " + producto[i].type);
                    $('#price').text("$" + producto[i].price);
                    $('#size').text("Talla " + producto[i].size);
                    $('#quantity').text("Cantidad " + producto[i].quantity);
                    $('#color').text("Color " + producto[i].color);
                    $('#time').text("Fecha Ingreso " + producto[i].time);
                    $('#image').html("<img src=" + producto[i].image + " style=\"width: 375px;\">");
                }
            });
        });
    }
</script>

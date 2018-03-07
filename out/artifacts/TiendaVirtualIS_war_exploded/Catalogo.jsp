<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="co.edu.unac.ing.store.dto.ProductDTO" %>
<%@ page import="java.util.List" %>


<title>Catalogo Productos</title>
<div class="brand">Catalogo de Productos</div>
<div class="address-bar">3481 Melrose Place | Beverly Hills, CA 90210 | 123.456.7890</div>

<jsp:include page="app.jsp"/>

<div class="container ">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="form-group col-sm-4">

                <label>Seleccione para buscar</label>
                <select name="colProduct" id="colProduct" class="form-control" required/>
                <option value="nombre">Nombre</option>
                <option value="precio">Precio</option>
                <option value="categoria">Categoria</option>
                <option value="talla">Tamaño</option>
                <option value="tipo">Tipo</option>
                <option value="color">Color</option>
                <option value="cantidad_disponible">Cantidad</option>
                <option value="tiempo_disponible">Fecha</option>
                </select>
                <input type="text" name="search" id="search">
                <button type="button" onclick="buscar();" class="btn-info">Buscar</button>

            </div>
        </div>
        <div class="panel panel-default">
            <% List<ProductDTO> listaProducts = (List) request.getAttribute("products");%>
            <table class="table striped centered" id="tablajson">
                <thead>
                <th>Nombre</th>
                <th>Categoria</th>
                <th>Tipo</th>
                <th>Precio</th>
                <th>Tamaño</th>
                <th>Cantidad</th>
                <th>Color</th>
                <th>Fecha</th>
                <th>Imagen</th>
                <th>Accion</th>
                </thead>
                <tbody>
                <% if (listaProducts != null) for (ProductDTO product : listaProducts) { %>
                <tr>
                    <td><%= product.getName()  %>
                    </td>
                    <td><%= product.getCategory() %>
                    </td>
                    <td><%= product.getType() %>
                    </td>
                    <td><%= product.getPrice() %>
                    </td>
                    <td><%= product.getSize() %>
                    </td>
                    <td><%= product.getQuantity() %>
                    </td>
                    <td><%= product.getColor() %>
                    </td>
                    <td><%= product.getTime() %>
                    </td>
                    <td><img src="<%=product.getImage()%>" style="width: 59px;" alt=""></td>
                    <td>
                        <button type="button" name="btnModal" id="btnModal" value="<%=product.getCode()%>"
                                class="btn btn-info btn-sm" data-toggle="modal"
                                data-target="#catalogo_modal" onclick="showModal(<%=product.getCode()%>)">
                            <span class="glyphicon glyphicon-eye-open"></span>
                        </button>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    function buscar() {
        $(document).ready(function () {
            $.get('ModalController', {
                colProduct: document.getElementById('colProduct').value,
                search: document.getElementById('search').value,
            }, function (res) {
                $("#tablajson tbody").empty();
                var products = $.parseJSON(res);
                for (var i in products) {
                    var newRow =
                        "<tr>"
                        + "<td>" + products[i].name + "</td>"
                        + "<td>" + products[i].category + "</td>"
                        + "<td>" + products[i].type + "</td>"
                        + "<td>" + products[i].price + "</td>"
                        + "<td>" + products[i].size + "</td>"
                        + "<td>" + products[i].quantity + "</td>"
                        + "<td>" + products[i].color + "</td>"
                        + "<td>" + products[i].time + "</td>"
                        + "<td>" + "<img src=" + products[i].image + " style=\"width: 59px;\">" + "</td>"
                        + "<td>" +
                         "<button type=\"button\" name=\"btnModal\" id=\"btnModal\" class=\"btn btn-info btn-sm\" data-toggle=\"modal\" data-target=\"#catalogo_modal\" onclick="+showModal(products[i].code)+"> <span class=\"glyphicon glyphicon-eye-open\"></span> </button>"
                        +"</td>"
                        + "</tr>";
                    $(newRow).appendTo("#tablajson tbody");
                }

            });
        });
    }
</script>
<jsp:include page="ModalProducts.jsp"></jsp:include>
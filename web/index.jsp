
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <title>Inicio</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <!--===============================================================================================-->

        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">        
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body class="animsition" > 
        <jsp:include page="header.jsp"/>    
        <!-- Header -->


        <!-- Slide1 -->
        <section class="slide1" style="background: gray">
            <div class="wrap-slick1">
                <div class="slick1">
                    <div class="item-slick1 item1-slick1" style="background-image: url(images/master-slide-02.jpg);">
                        <div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
                            <span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="fadeInDown">
                                Articulos
                            </span>

                            <h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="fadeInUp">
                               online
                            </h2>

                            <div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
                                <!-- Button -->
                                 
                            </div>
                        </div>
                    </div>
                    <div class="item-slick1 item2-slick1" style="background-image: url(images/master-slide-03.jpg);">
                        <div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
                            <span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rollIn">
                                Prendas
                            </span>

                            <h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="lightSpeedIn">
                                  a la moda
                            </h2>

                            <div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="slideInUp">
                                <!-- Button -->
                                 
                            </div>
                        </div>
                    </div>

                    <div class="item-slick1 item3-slick1" style="background-image: url(images/master-slide-04.jpg);">
                        <div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
                            <span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rotateInDownLeft">
                                Prendas
                            </span>

                            <h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="rotateInUpRight">
                                  a la moda
                            </h2>

                            <div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
                                <!-- Button -->
                               
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Banner -->
        
        <s:if test="#user!=null">
        <section class="newproduct bgwhite p-t-45 p-b-105">
            <div class="container">
                <div class="sec-title p-b-60">
                    <h3 class="m-text5 t-center">
                        Articulos disponibles
                    </h3>
                </div>

                <!-- Slide2 -->
                <div class="wrap-slick2">
                    <div class="slick2">
                        <s:iterator value="#lista" var="p">
                            <div class="item-slick2 p-l-15 p-r-15">
                                <!-- Block2 -->
                                <div class="block2">
                                    <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                                        <img src="images/<s:property value="#p.imagen"/>" alt="IMG-PRODUCT">

                                        <div class="block2-overlay trans-0-4">
                                            <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                                                <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                                                <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                                            </a>

                                            <div class="block2-btn-addcart w-size1 trans-0-4">
                                                <!-- Button -->
                                                <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                                                    Añadir al carrito
                                                </button>
                                                <input type="hidden" value="<s:property value="#p.iditem"/>" class="iditem"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="block2-txt p-t-20">
                                        <a href="product-detail.jsp" class="block2-name dis-block s-text3 p-b-5">
                                            <s:property value="#p.nombre"/>
                                        </a>
                                        <s:if test="#p.descuento>0">
                                            <span class="block2-oldprice m-text7 p-r-5">
                                                <s:property value="#p.precio"/>   
                                            </span>

                                            <span class="block2-newprice m-text8 p-r-5">
                                                <s:property value="#p.desc"/>
                                            </span>
                                        </s:if>
                                        <s:else>
                                            <span class="block2-price m-text6 p-r-5">
                                                <s:property value="#p.precio"/>
                                            </span>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </s:iterator>
                    </div>
                </div>
            </div>
        </section>
        <!-- New Product -->
        </s:if>

        <!-- Banner2 -->
     


        <!-- Blog -->


        <!-- Shipping -->



        <!-- Footer -->
        <footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
            <jsp:include page="fotter.jsp"/>           
        </footer>



        <!-- Back to top -->
        <div class="btn-back-to-top bg0-hov" id="myBtn">
            <span class="symbol-btn-back-to-top">
                <i class="fa fa-angle-double-up" aria-hidden="true"></i>
            </span>
        </div>

        <!-- Container Selection1 -->
        <div id="dropDownSelect1"></div>



        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>      
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
        <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
        <script type="text/javascript">
            $(".selection-1").select2({
                minimumResultsForSearch: 20,
                dropdownParent: $('#dropDownSelect1')
            });
        </script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
        <script type="text/javascript" src="js/slick-custom.js"></script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
        <!--===============================================================================================-->
        <script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
        <script type="text/javascript">
            //header-cart
            var ul = $(".header-cart ul");
            var cart = $(".cart");
            $('.block2-btn-addcart').each(function () {
                var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
                $(this).on('click', function () {
                    var iditem = $(this).find('input:hidden');
                    var item = {
                        "items": {
                            "iditem": iditem.val()
                        }};
                 
                    
                    $.ajax({
                        url: "add_to_cart",
                        data: JSON.stringify(item),
                        dataType: 'json',
                        contentType: 'application/json',
                        type: 'POST',
                        async: true,
                        success: function (res) {
                            var p = res.items;
                            cart.html(res.cantidad);
                            ul.append("<li class='header-cart-item'>" +
                                    "<div class='header-cart-item-img'>" +
                                   "<img src='images/" + p.imagen + "' alt='IMG'>" +
                                    "</div>" +
                                    "<div class='header-cart-item-txt'>" +
                                    "<a href='#' class='header-cart-item-name'>" +
                                    "" + p.nombre +
                                    "</a>" +
                                    "<span class='header-cart-item-info'>" +
                                    "1 x $" + p.precio +
                                    "</span>" +
                                    "</div>" +
                                    "</li>");
                        }
                    });



                    swal(nameProduct, "Fue añadido al carrito !", "success");
                });
            });

            $('.block2-btn-addwishlist').each(function () {
                var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
                $(this).on('click', function () {
                    swal(nameProduct, "fue añadido al la lista blanca !", "success");
                });
            });
        </script>

        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>

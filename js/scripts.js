
    (function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
            location.pathname.replace(/^\//, "") ==
                this.pathname.replace(/^\//, "") &&
            location.hostname == this.hostname
        ) {
            var target = $(this.hash);
            target = target.length
                ? target
                : $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate(
                    {
                        scrollTop: target.offset().top - 70,
                    },
                    1000,
                    "easeInOutExpo"
                );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 100,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#mainNav").offset().top > 100) {
            $("#mainNav").addClass("navbar-shrink");
        } else {
            $("#mainNav").removeClass("navbar-shrink");
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);

})(jQuery); 

$('.btn-agregar').click(function(){ 
    var id_usuario = $("#user_dni").val();
    var id = $(this).attr("data-id");
    var imagen = $(this).attr("data-imagen");
    var marca = $(this).attr("data-marca");
    var modelo = $(this).attr("data-modelo");
    var precio = $(this).attr("data-precio");
    console.log(id, id_usuario);
    $.post("controladores/agregar_carrito.php", {
        id: id, 
        id_usuario: id_usuario,
        imagen: imagen,
        marca: marca,
        modelo: modelo,
        precio: precio 
    }, function(result){
        alert("producto insertado!");
    });
})
$('.cantidad').change(function(){ 
    var cantidad = $(this).val();           
    var precio = $(this).parent().parent().find('.precio').text();       
    var subtotal = cantidad * precio;
    console.log (subtotal, precio);
    $(this).parent().parent().find('.subtotal').text(subtotal);
    total = 0;
    $(".subtotal").each(function() { 
        total = parseInt($(this).text()) + total;
    }); 
    $("#total").text(total);
})



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

//Botón prueba de carrito    
// $('.btn-agregar').click(function(){
//alert ("hola, hiciste click!");})

//Agregar a carrito.php, agrega productos suma/ multiplica y genera subtotal
$('.btn-agregar').click(function(){ 
    console.log("soy " + $(this).attr("data-marca") + "el modelo es" + $(this).attr("data-modelo") + "y salgo" + $(this).attr("data-precio"));
    
    
    //var precio = $(this).attr("data-precio")
    //$.post ("agregar_carrito.php", {precio: precio}, function (result){
    //alert("producto insertado!");
    //});
})
$('#cantidad').change(function(){ 
    var cantidad = $(this).val(); //val es propiedad de los input
    var precio = $('#precio').text(); //precio no es un input
    var subtotal = cantidad * precio;
    $ ("#subtotal").text (subtotal);
})   
    //console.log(subtotal); Probando si imprime en consola cantidad y multiplica los valores en subtotal.
    //var subtotal = parseInt($(this) .val()) * paseInt($('#precio') .val());  //variable que guarda precio*cantidad
    //console.log(precio);

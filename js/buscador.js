$("#inputBusqueda").keyup(function () {
    var consulta = $("#searchTabla").DataTable();
	consulta.search($(this).val()).draw();

	if ($("#inputBusqueda").val() == ""){
		$(".resultados").css({
			"height": "auto",
			"background": "none"
		});

		$("#search").hide();

	} else {
		$("#search").fadeIn("fast");
	}
});

// FUNCIONALIDADES USUARIO

(function() {
    $('.btn').click(function() {
      $(this).toggleClass('active');
      return $('.box').toggleClass('open');
    });
  
  }).call(this);
  
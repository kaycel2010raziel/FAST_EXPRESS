$(document).ready(function(){
	CargarConteos();
	CargarNotificaciones();
	
});



function CargarConteos(){
	$.ajax({type: "POST", url: "../php/FEX_ADMIN_MAIN_VIEW.php", async: true , data: {'a0': 1}})
	.done(function(stream) {	
		data = jQuery.parseJSON(stream);
		//console.log(data);
		$('.indicator').html(data[0]['NOTIFICACIONES']);
		$('#enviosG').html(data[0]['ORDENES_GENERADAS']);
		$('#enviosA').html(data[0]['ORDENES_ASIGNADAS']);
		$('#enviosR').html(data[0]['ORDENES_EN_RUTA']);
		$('#enviosE').html(data[0]['ORDENES_ENTREGADAS']);
		$('#show_notification').html(data[0]['NOTIFICACIONES']);
	}); 
}

function CargarNotificaciones(){
	$.ajax({type: "POST", url: "../php/FEX_ADMIN_MAIN_VIEW.php", async: true , data: {'a0': 2}})
	.done(function(stream) {	
		data = jQuery.parseJSON(stream);
		//console.log(data);
		data.forEach(function(element, index, array){
			$("#list_Notification").append(""+
				"<a href='#' class='list-group-item'>"+
				"	<div class='row g-0 align-items-center'>"+
				"		<div class='col-2'>"+
				"			<button type='button' id='Show' class='btn btn-danger btn-sm' idnotificacion="+element['IDNOTIFICACION']+"><i class='fa fa-window-close'>&nbsp;</i></button>"+
				"		</div>"+
				"	<div class='col-10'>"+
				"		<div class='text-dark'>"+element['HEADER']+"</div>"+
				"			<div class='text-muted small mt-1'>"+element['BODY']+"</div>"+
				"			<div class='text-muted small mt-1'>"+element['FECHA_CREACION']+"</div>"+
				"		</div>"+
				"	</div>"+
				"</a>");
		});
		
		$('.btn-sm').click(function(){
			var idnotificacion = $(this).attr("idnotificacion");
			$.ajax({type: "POST", url: "../php/FEX_ADMIN_MAIN_VIEW.php", async: true , data: {'a0': 3,idnotificacion:idnotificacion}})
			.done(function(stream) {	
				location.reload();
			}); 
		}); 
	}); 
	
	
}

	
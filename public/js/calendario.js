
function detallevento(html, titulo){

	console.log({html})
	
	swal({
		title: titulo,
		html: html,
		animation: true,
		customClass: "animated tada",
	});
}


$("#startDialog").click(function () {
	swal({
		title: "Cita",
		html: $(
			'<div class="eapp-events-calendar-popup-item-row"><div class="eapp-events-calendar-popup-time-component eapp-events-calendar-popup-item-time"><div class="eapp-events-calendar-popup-time-title"><svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="eapp-events-calendar-popup-time-icon"><path d="M6 12A6 6 0 1 0 6 0a6 6 0 0 0 0 12zm.984-4.97a.454.454 0 0 1-.07.154l-.026.038a.5.5 0 0 1-.655.148L3.55 5.857a.454.454 0 0 1-.149-.655.551.551 0 0 1 .722-.164l1.877 1.059V2.9a.5.5 0 1 1 1 0v4a.5.5 0 0 1-.017.13z"></path></svg><div class="eapp-events-calendar-popup-time-titleText">Cuando</div></div><div class="eapp-events-calendar-popup-time-content"><div>Viernes, May 31 1:00 AM - 2:00 AM</div><div class="eapp-events-calendar-drop-down-modal"><div class="eapp-events-calendar-drop-down-item"><a target="_blank" href="#">Agregar al Calendarrio</a></div></div></div></div></div><div class="eapp-events-calendar-popup-location-component eapp-events-calendar-popup-item-location"><div class="eapp-events-calendar-popup-location-title"><svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="eapp-events-calendar-popup-location-icon"><path d="M6 12C2.667 9.174 1 6.84 1 5a5 5 0 1 1 10 0c0 1.84-1.667 4.174-5 7zm0-6a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path></svg><div class="eapp-events-calendar-popup-location-titleText">Donde</div></div><div class="eapp-events-calendar-popup-location-content"><div>Auditorio 1</div><div class="eapp-events-calendar-drop-down-modal"><div class="eapp-events-calendar-drop-down-item">Calle 100</div></div></div></div><div class="eapp-events-calendar-organizer-component"><div class="eapp-events-calendar-organizer-title"><svg class="eapp-events-calendar-organizer-titleIcon" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><g fill-rule="nonzero"><path d="M11 12a5 5 0 1 0-10 0h10zM6 6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path></g></svg><div class="eapp-events-calendar-organizer-titleText">Participantes:</div></div><div class="eapp-events-calendar-organizer-content"><div><div class="eapp-events-calendar-organizer-name">Susie Silver</div><div class="eapp-events-calendar-drop-down-modal"><div class="eapp-events-calendar-drop-down-item"><a target="_blank" href="#">Participante 1</a></div><div class="eapp-events-calendar-drop-down-modal"><div class="eapp-events-calendar-drop-down-item"><a target="_blank" href="#">Participante 2</a></div><div class="eapp-events-calendar-drop-down-modal"><div class="eapp-events-calendar-drop-down-item"><a target="_blank" href="#">Participante 3</a></div><div class="eapp-events-calendar-organizer-contacts"></div></div></div></div>'
		),
		animation: true,
		customClass: "animated tada",
	});
});

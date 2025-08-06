let datadepartamentos = [];
let datamunicipios = [];

document.addEventListener("DOMContentLoaded", function () {
	var datosJSON = cargarJSONSincrono("/js/colombia.json");
	datadepartamentos = datosJSON.departamentos;
	datamunicipios = datosJSON.municipios;
	cargardivipola();

	if (!document.getElementById("paisresidencia")) {
		return;
	}

	const paisresidencia = document.getElementById("paisresidencia").value;

	if (paisresidencia == "Colombia") {
		// obtenerDatos();
		// cargarJSONSincrono("./js/colombia.json");

		// console.log(datosJSON);
		// datadepartamentos = datosJSON.departamentos;
		// datamunicipios = datosJSON.municipios;
		divubicacion.classList.remove("col2");
		divubicacion.classList.add("col3");
		mostrarselectores(true);
		document.getElementById("pestrato").style.display = "block";
		// cargardivipola();
	} else {
		console.log("cargo sin colombia");
		// cargardivipola();
		divubicacion.classList.remove("col3");
		divubicacion.classList.add("col2");
		mostrarselectores(false);
		document.getElementById("pestrato").style.display = "none";
		document.getElementById("plocalidades").style.display = "none";
	}
});

function cargarJSONSincrono(url) {
	var xhr = new XMLHttpRequest();
	xhr.open("GET", url, false); // El tercer parámetro indica si la solicitud es síncrona
	xhr.send(null);

	if (xhr.status === 200) {
		return JSON.parse(xhr.responseText);
	} else {
		throw new Error("No se pudo cargar el JSON: " + xhr.status);
	}
}

function cargardivipola() {
	const paisresidencia = document.getElementById("paisresidencia");
	const divubicacion = document.getElementById("divubicacion");

	if (!paisresidencia) {
		return;
	}

	paisresidencia.addEventListener("change", function () {
		// console.log(paisresidencia.value, divubicacion);
		if (paisresidencia.value == "Colombia") {
			cargarJSONSincrono("/js/colombia.json");
			console.log("por colombia");
			divubicacion.classList.remove("col2");
			divubicacion.classList.add("col3");
			mostrarselectores(true);
			document.getElementById("pestrato").style.display = "block";
		} else {
			console.log("por noooo colombia");
			divubicacion.classList.remove("col3");
			divubicacion.classList.add("col2");
			mostrarselectores(false);
			document.getElementById("pestrato").style.display = "none";
			document.getElementById("plocalidades").style.display = "none";
		}
	});
}

function mostrarselectores(activo = false) {
	console.log("mostrarselectores", activo);
	// const nodoBorrar = document.getElementById("divpais");
	const divdepartamentos = document.getElementById("divdepartamentos");
	const divmunicipios = document.getElementById("divmunicipios");
	const txtciudad = document.getElementById("txtciudad");

	if (!activo) {
		console.log(
			"entra y borra selectores",
			divdepartamentos,
			divmunicipios
		);

		if (divdepartamentos) {
			divdepartamentos.remove();
			divmunicipios.remove();
		}
		if (!txtciudad) {
			creartxtciudad();
		}
	} else {
		console.log("entra y borra txt");
		crearnionodoselector();
		crearnionodoselectorciudad();
		if (txtciudad) {
			txtciudad.remove();
		}
	}
}

function creartxtciudad() {
	// Obtener el elemento padre donde se va a agregar el nuevo contenido
	const divUbicacion = document.getElementById("divubicacion");

	// Crear el elemento div para la ciudad
	const divCiudad = document.createElement("div");
	divCiudad.id = "txtciudad";

	// Crear el elemento p dentro del div
	const parrafo = document.createElement("p");

	// Crear el elemento label dentro del párrafo
	const label = document.createElement("label");
	label.classList.add("gLabel", "required");

	// Crear el elemento span dentro del label
	const span = document.createElement("span");
	span.classList.add("label");
	span.innerHTML = "<strong>Ciudad<br><em> / City</em></strong>";

	// Agregar el span como hijo del label
	label.appendChild(span);

	// Crear el elemento input dentro del label
	const input = document.createElement("input");
	input.type = "text";
	input.name = "ciudadresidencia";
	input.id = "ciudadresidencia";
	input.value = document.getElementById("ciudadresidenciainput").value;
	// input.value = '4444'; // Valor por defecto según tu ejemplo

	// Agregar el input como hijo del label
	label.appendChild(input);

	// Agregar el label como hijo del párrafo
	parrafo.appendChild(label);

	// Agregar el párrafo como hijo del div de ciudad
	divCiudad.appendChild(parrafo);

	// Agregar el div de ciudad como hijo del div de ubicación
	divUbicacion.appendChild(divCiudad);
}

function crearnionodoselector() {
	// Obtener el elemento padre
	const divUbicacion = document.getElementById("divubicacion");

	// Crear el elemento div para departamentos
	const divDepartamentos = document.createElement("div");
	divDepartamentos.id = "divdepartamentos";

	// Crear el elemento p dentro del div
	const parrafo = document.createElement("p");

	// Crear el elemento label dentro del párrafo
	const label = document.createElement("label");
	label.classList.add("gLabel", "tSelect", "required");

	// Crear el elemento span dentro del label
	const span = document.createElement("span");
	span.classList.add("label");
	span.innerHTML = "<strong>Departamento<br><em> / Departament</em></strong>";

	// Agregar el span como hijo del label
	label.appendChild(span);

	// Crear el elemento select dentro del label
	const select = document.createElement("select");
	select.id = "departamentosselector";
	select.name = "departamentosselector";
	select.setAttribute("onchange", "llenarmunicipios()");

	// console.log(datadepartamentos);
	datadepartamentos.forEach((color) => {
		const option = document.createElement("option");
		option.textContent = color.nombre;
		option.value = color.codigo; // Opcional: asignar valores diferentes
		select.appendChild(option);
	});

	// Agregar el select como hijo del label
	label.appendChild(select);

	// Agregar el label como hijo del párrafo
	parrafo.appendChild(label);

	// Agregar el párrafo como hijo del div de departamentos
	divDepartamentos.appendChild(parrafo);

	// Agregar el div de departamentos como hijo del div de ubicación
	divUbicacion.appendChild(divDepartamentos);

	// datadepartamentos.forEach((color) => {
	// 	const option = document.createElement("option");
	// 	option.textContent = color.nombre;
	// 	option.value = color.codigo; // Opcional: asignar valores diferentes
	// 	select.appendChild(option);
	// });
	llenardepartamentos();
}

function crearnionodoselectorciudad() {
	// Obtener el elemento padre
	const divUbicacion = document.getElementById("divubicacion");

	// Crear el elemento div para departamentos
	const divDepartamentos = document.createElement("div");
	divDepartamentos.id = "divmunicipios";

	// Crear el elemento p dentro del div
	const parrafo = document.createElement("p");

	// Crear el elemento label dentro del párrafo
	const label = document.createElement("label");
	label.classList.add("gLabel", "tSelect", "required");

	// Crear el elemento span dentro del label
	const span = document.createElement("span");
	span.classList.add("label");
	span.innerHTML = "<strong>Ciudad<br><em> / City</em></strong>";

	// Agregar el span como hijo del label
	label.appendChild(span);

	// Crear el elemento select dentro del label
	const select = document.createElement("select");
	select.id = "municipiosselector";
	select.name = "ciudadresidencia";
	select.setAttribute("onchange", "buscarlocalidad()");

	// Agregar el select como hijo del label
	label.appendChild(select);

	// Agregar el label como hijo del párrafo
	parrafo.appendChild(label);

	// Agregar el párrafo como hijo del div de departamentos
	divDepartamentos.appendChild(parrafo);

	// Agregar el div de departamentos como hijo del div de ubicación
	divUbicacion.appendChild(divDepartamentos);

	llenarmunicipios();
}

function llenardepartamentos() {
	// console.log(datadepartamentos);
	const departamentoSelect = document.getElementById("departamentosselector");

	if (departamentoSelect.length < 1) {
		datadepartamentos.forEach((color) => {
			const option = document.createElement("option");
			option.textContent = color.nombre;
			option.value = color.codigo; // Opcional: asignar valores diferentes
			departamentoSelect.appendChild(option);
		});
	}

	// console.log(document.getElementById("departamentoresidenciainput").value);
	departamentoSelect.value = document.getElementById(
		"departamentoresidenciainput"
	).value;
}

function llenarmunicipios() {
	const departamentoSelect = document.getElementById("departamentosselector")
		.value;
	const municipiosSelect = document.getElementById("municipiosselector");

	// console.log({departamentoSelect});

	//  const codigoDepartamento = departamentoSelect.value;
	const municipios = datamunicipios.filter(
		(municipio) => municipio.cod_depto === departamentoSelect
	);
	// console.log(municipios);
	// Limpiar el select de municipios
	municipiosSelect.innerHTML =
		'<option value="">Seleccione un Ciudad</option>';
	// Llenar el select de municipios con los municipios del departamento seleccionado
	// console.log(municipios);
	municipios.forEach((municipio) => {
		const option = document.createElement("option");
		option.value = municipio.nom_mpio;
		option.textContent = municipio.nom_mpio;
		municipiosSelect.appendChild(option);
	});

	municipiosSelect.value = document.getElementById(
		"ciudadresidenciainput"
	).value;
}

function buscarlocalidad() {
	// const municipiosSelect = document.getElementById("municipiosselector").value;
	const municipiosselector = document.getElementById("municipiosselector")
		.value;
	if (municipiosselector == "BOGOTÁ. D.C.") {
		console.log("es bogota");
		document.getElementById("plocalidades").style.display = "block";
	} else {
		document.getElementById("plocalidades").style.display = "none";
	}
}

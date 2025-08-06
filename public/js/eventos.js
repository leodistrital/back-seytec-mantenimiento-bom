$(document).ready(function () {
	const edicionesaanteriores = document.querySelector("#partifiporegiones");
	if (edicionesaanteriores) {
		edicionesaanteriores.addEventListener("change", (event) => {
			if (edicionesaanteriores.value == 1)
				document.querySelector("#cualciudad").style.display = "block";

			if (edicionesaanteriores.value != 1)
				document.querySelector("#cualciudad").style.display = "none";
		});
	}

	const intereses = document.querySelector(".otrointeresval");
	if (intereses) {
		intereses.addEventListener("click", (event) => {
			console.log(intereses.checked);
			if (intereses.checked == true) {
				// console.log("si");
				document.querySelector("#p-otrointeres").style.display =
					"block";
			}

			if (intereses.checked == false) {
				// console.log("no");
				document.querySelector("#p-otrointeres").style.display = "none";
			}
		});
	}

	const actividad = document.querySelector(".otroactividad");
	if (actividad) {
		actividad.addEventListener("click", (event) => {
			console.log(actividad.checked);
			if (actividad.checked == true) {
				console.log("si");
				document.querySelector("#p-otrointeres").style.display =
					"block";
			}

			if (actividad.checked == false) {
				console.log("no");
				document.querySelector("#p-otrointeres").style.display = "none";
			}
		});
	}




	const grupoetnia = document.querySelector("#grupoetnia");
	const divetnia = document.getElementById("divetnia");
	// console.log(paisresidencia)

	if (grupoetnia) {
		grupoetnia.addEventListener("change", (event) => {
			console.log(grupoetnia.value);
			if (grupoetnia.value == 6) {
				divetnia.classList.remove("col2");
				divetnia.classList.add("col3");
		
				document.querySelector("#otrogrupoetnico").style.display =	"block";
			} else {
				divetnia.classList.remove("col3");
				divetnia.classList.add("col2");
				document.querySelector("#otrogrupoetnico").style.display =	"none";
			}

			// if (actividad.checked == false) {
			// 	console.log("no");
			// 	document.querySelector("#p-otrointeres").style.display = "none";
			// }
		});

		if (grupoetnia.value == 6) {
			divetnia.classList.remove("col2");
			divetnia.classList.add("col3");
	
			document.querySelector("#otrogrupoetnico").style.display =	"block";
		}

		// console.log(grupoetnia.value, 'valor etnia');
	}


});

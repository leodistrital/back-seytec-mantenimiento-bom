<?php

// var_dump($calendario);
?>

<input type="button" value="pdf" onclick="converHTMLFileToPDF()">
<div class="sectExtraInt nop">
    <div class="maxW">
        <div id="calendarpdf">

            <div class="imgCalendarPrint">
                <!-- <img src="https://www.bogotamarket.com/images/site/calendario-header.jpg"> -->
                <img class="HeaderPrint" src="./../images/site/header_agenda.jpg">
                <p>Estimado Daniel:<br><br>
                    Desde el Bogotá Audiovisual Market, expresamos nuestro entusiasmo por darle la bienvenida a nuestro
                    mercado y contar con su participación en las actividades que hemos preparado para esta nueva
                    edición. <br>
                    <br><br>
                    Hemos diseñado para usted la siguiente agenda con el fin de guiar su participación en el mercado y
                    contar con su oportuna asistencia:
                </p>
            </div>



            <table class="TableAgendaPrint">
                <tbody>
                    <tr class="AgendaCabeceras">
                        <td>
                            <p><strong>Fecha</strong></p>
                        </td>
                        <td>
                            <p><strong>Cita / Evento</strong></p>
                        </td>
                        <td>
                            <p><strong>Horario</strong></p>
                        </td>
                        <td>
                            <p><strong>Proyecto / Actividad</strong></p>
                        </td>
                        <td>
                            <p><strong>Lugar</strong></p>
                        </td>
                        <td>
                            <p><strong>Mesa</strong></p>
                        </td>
                    </tr>

                    <?php
                    foreach ($calendario as $dia):

                        $fecha = $dia['nombredia'] . " " . $dia['solodia'] . " de julio de 2024";
                        ?>

                        <?php foreach ($dia['citas'] as $cita):

                            $horario = $cita['horario'];
                            $tipoevento = $cita['tipo'];
                            $lugar = $cita['nom_lug'];
                            $ubucacion = $cita['nom_ubi'];

                            if (empty($cita['tit_age']))
                                $descripcion = $cita['not_age'];

                            if (empty($cita['not_age']))
                                $descripcion = $cita['tit_age'];
                            ?>

                            <tr>
                                <td>
                                    <p style="color: #768787;"><span><?= $fecha ?> </span></p>
                                </td>
                                <td>
                                    <p><span><?= $tipoevento ?></span></p>
                                </td>
                                <td>
                                    <p><span><?= $horario ?></span></p>
                                </td>

                                <td>
                                    <p><span><?= $descripcion ?></span></p>
                                </td>
                                <td>
                                    <p><span><?= $lugar ?></span></p>
                                </td>
                                <td>
                                    <p><span><?= $ubucacion ?></span></p>
                                </td>
                            </tr>
                        <?php endforeach ?>

                    <?php endforeach ?>

                </tbody>
            </table>

            <div class="imgCalendarPrint" style="margin-bottom: 4rem;">
                <!-- <img class="HeaderPrint" src="https://www.bogotamarket.com/images/site/footer_agenda.jpg"> -->
            </div>
        </div>
    </div>
</div>

<script>
    function readHTML() {
        // get the HTML source file path
        var path = document.getElementById("fileUpload").files[0];
        var contents;
        $("#error-message").html("");
        $("#fileUpload").css("border", "#a6a6a6 1px solid");
        if ($(path).length != 0) {
            var r = new FileReader();
            r.onload = function (e) {
                // read HTML file content
                contents = e.target.result;
                // show JavaScript PDF preview
                $(".preview").show();
                $("#temp-target").html(contents);

                $(".btn-preview").hide();
                $(".btn-generate").show();
            }
            r.readAsText(path);
        } else {
            $("#error-message").html("required.").show();
            $("#fileUpload").css("border", "#d96557 1px solid");
        }
    }

    function converHTMLFileToPDF() {
        const {
            jsPDF
        } = window.jspdf;
        var doc = new jsPDF('l', 'mm', [2500, 1200]);

        var pdfjs = document.querySelector('#calendarpdf');

        console.log(pdfjs);
        // Convert HTML to PDF in JavaScript


        doc.html(pdfjs, {
            callback: function (doc) {
                doc.save("output.pdf");
            },
            x: 10,
            y: 10
        });

    }
</script>

<script>
    const jsArray = <?= $jsonArray ?>;


    const jscitas = jsArray;


    function ready() {
        jscitas.forEach(function (citasdias, indice) {
            let numerodia = indice + 1;
            citasdias.citas.forEach(function (cita) {
                graficarCita(cita, numerodia)

            });
        });


        function graficarCita(cita, numerodia) {

            stringId = `celd-${cita.hor_ini_age}-${numerodia}`;
            // console.log(stringId)
            const celda = document.getElementById(stringId);

            if (celda) {
                duracion = ((cita.int_fin_age - cita.int_ini_age) * 150) / 60;
                margintop = 0;
                if (cita.min_ini_age > 0) {
                    margintop = ((cita.min_ini_age - 0) * 140) / 60;
                }

                //console.log( margintop,cita.min_ini_age )
                let plantilla = plantillaCita(cita.fecha, cita.not_age, cita.horario, duracion,
                    cita.not_age, margintop, cita.tit_age, cita)
                // console.log(plantilla)
                const textoNuevoElemento = document.createTextNode(plantilla);
                celda.innerHTML += plantilla;
            }

        }





        function plantillaCita(fecha, not_age, horario, duracion, nota, margintop, titulo, cita) {
            // console.log(duracion)
            // <p>${nota}</p>

            if (nota) {
                nota == `<p>${nota}</p>`;
            } else {

                if (titulo)
                    nota = titulo.slice(0, 19);
                else
                    nota = ''
            }
            // console.log(nota)
            // nota = nota.slice(0, 19);

            const jsonString = JSON.stringify(cita);
            // cita = json
            // let nota = `<p>${nota}</p>`;
            return `
        <div  onclick='mostrarpopup(${jsonString})'  class="task" style=" background: ${cita.color}; cursor:pointer; position: absolute; width: 10rem; margin-top: ${margintop}px;   height: ${duracion}px; ">
              <p>${nota}...</p>
             <p><time >${horario}</time> <time datetime="06:00"></time></p>
        </div>
        `
        }


    }

    document.addEventListener("DOMContentLoaded", ready);


    function mostrarpopup(cita) {

        // const citapop = JSON.parse(cita);
        // console.log(cita)
        let htmlparticipantes = '';
        cita.participantes.forEach(function (participante) {
            // console.log(participante.nombre)
            htmlparticipantes += `<div><div class="eapp-events-calendar-drop-down-item">  
                            <p  >${participante.nombre}</p>
                        </div></div>`;
            // console.log(htmlparticipantes)

        });



        let titulo = ''

        if (!titulo) {
            if (cita.not_age)
                titulo = cita.not_age
        } else {
            titulo = cita.tit_age
        }


        html = `
   <div class="eapp-events-calendar-popup-item-row">
    <div class="eapp-events-calendar-popup-time-component eapp-events-calendar-popup-item-time">
        <div class="eapp-events-calendar-popup-time-title">
            
            <div class="eapp-events-calendar-popup-time-titleText">Cuando</div>
        </div>
        <div class="eapp-events-calendar-popup-time-content">
            <div>${cita.horario}</div>
            
        </div>
    </div>
</div>
<div class="eapp-events-calendar-popup-location-component eapp-events-calendar-popup-item-location">
    <div class="eapp-events-calendar-popup-location-title">
       
        <div class="eapp-events-calendar-popup-location-titleText">Donde</div>
    </div>
    <div class="eapp-events-calendar-popup-location-content">
        <div>${cita.nom_lug}</div>
        <div class="eapp-events-calendar-drop-down-modal">
            <div class="eapp-events-calendar-drop-down-item">${cita.nom_ubi}</div>
        </div>
    </div>
</div>
<div class="eapp-events-calendar-organizer-component">
    <div class="eapp-events-calendar-organizer-title">
        
        <div class="eapp-events-calendar-organizer-titleText">Participantes:</div>
    </div>
    
    <div class="eapp-events-calendar-organizer-content">
        ${htmlparticipantes}
    </div>
    `;


        swal({
            title: titulo,
            html: html,
            animation: true,
            customClass: "animated tada",
        });


    }
</script>
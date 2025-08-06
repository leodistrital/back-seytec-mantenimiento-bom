<?php

// var_dump($calendario);
?>
<div class="sectExtraInt nop">
    <div class="maxW">
        <div class="listRegiones bg2">

            <div class="calendar">
                <div class="timeline">
                    <div class="spacer"></div>
                   
                    <div class="time-marker">8 AM</div>
                    <div class="time-marker">9 AM</div>
                    <div class="time-marker">10 AM</div>
                    <div class="time-marker">11 AM</div>
                    <div class="time-marker">12 PM</div>
                    <div class="time-marker">1 PM</div>
                    <div class="time-marker">2 PM</div>
                    <div class="time-marker">3 PM</div>
                    <div class="time-marker">4 PM</div>
                    <div class="time-marker">5 PM</div>
                    <div class="time-marker">6 PM</div>
                    <div class="time-marker">7 PM</div>
                     <div class="time-marker">8 PM</div>
                </div>
                <div class="days">

                    <?php
                    foreach ($calendario as $dias):


                        ?>
                        <div class="day mon">
                            <div class="date">
                                <p class="date-day"><?= $dias['nombredia'] ?></p>
                                <p class="date-num"><?= $dias['solodia'] ?></p>
                            </div>
                            <div class="citas" style="
    position: relative;
    height: 1000px;
    max-height: 1000px;
    border: 1px solid white;
">
                                <?php
                                foreach ($dias['citas'] as $citas):
                                   // echo "------------";
                                // print_r($citas);
                                // echo "<br>";
                               //  echo "++++";
                                 //var_dump($citas['participantes']);
                                 $totalParticipantes='';

                                  foreach ($citas['participantes'] as $key => $item) {
                                          // var_dump($item['nombre']);
                                           $totalParticipantes.='<div class="eapp-events-calendar-organizer-name">'.$item['nombre'].'</div>';
                                        }
                               //  echo "------------";
                                    // [int_ini_age] => 690 [int_fin_age] => 780
                                    // echo json_encode($citas);
                                    // var_dump($citas['horario']);
                                    // print_r($citas['horario']);
                                    $duracion = $citas['int_fin_age'] - $citas['int_ini_age'];
                                    $marginTop = ($citas['int_ini_age'] )  -450;
                                    $nombrecita='';
                                    if( !empty($citas['tit_age'])){
                                        $nombrecita = $citas['tit_age'];
                                    } else {
                                         $nombrecita = $citas['not_age'];
                                    }

                                 //   print_r($citas['participantes']);





                                        ?>
                                    <div  data_min=<?=$citas['int_ini_age']?> style= "position: absolute; border: 1px solid white;  height: <?= $duracion ?>px; width: 99%; margin-top: <?= $marginTop ?>px; padding: 0.1rem;"  onclick='detallevento(`<div class="eapp-events-calendar-popup-item-col">
    <div class="eapp-events-calendar-popup-time-component eapp-events-calendar-popup-item-time">
        <div class="eapp-events-calendar-popup-time-title">
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="eapp-events-calendar-popup-time-icon">
                <path d="M6 12A6 6 0 1 0 6 0a6 6 0 0 0 0 12zm.984-4.97a.454.454 0 0 1-.07.154l-.026.038a.5.5 0 0 1-.655.148L3.55 5.857a.454.454 0 0 1-.149-.655.551.551 0 0 1 .722-.164l1.877 1.059V2.9a.5.5 0 1 1 1 0v4a.5.5 0 0 1-.017.13z"></path>
            </svg>
            <div class="eapp-events-calendar-popup-time-titleText">Cuando</div>
        </div>
        <div class="eapp-events-calendar-popup-time-content">
            <div><?= $citas['fec_age'] ?>  - <?= $citas['horario'] ?></div>
           
        </div>
    </div>
    <div class="eapp-events-calendar-popup-location-component eapp-events-calendar-popup-item-location">
        <div class="eapp-events-calendar-popup-location-title">
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" class="eapp-events-calendar-popup-location-icon">
                <path d="M6 12C2.667 9.174 1 6.84 1 5a5 5 0 1 1 10 0c0 1.84-1.667 4.174-5 7zm0-6a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
            </svg>
            <div class="eapp-events-calendar-popup-location-titleText">Donde</div>
        </div>
        <div class="eapp-events-calendar-popup-location-content">
            <div><?= $citas['nom_lug'] ?></div>
            <div class="eapp-events-calendar-drop-down-modal">
                <div class="eapp-events-calendar-drop-down-item"><?= $citas['nom_ubi'] ?></div>
            </div>
        </div>
    </div>
    <div class="eapp-events-calendar-organizer-component">
        <div class="eapp-events-calendar-organizer-title">
            <svg class="eapp-events-calendar-organizer-titleIcon" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                <g fill-rule="nonzero">
                    <path d="M11 12a5 5 0 1 0-10 0h10zM6 6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                </g>
            </svg>
            <div class="eapp-events-calendar-organizer-titleText">Participantes:</div>
        </div>

        <div class="eapp-events-calendar-organizer-content">
            <div>  ` + 
            <?php 
            echo '`'.$totalParticipantes.'`';
             ?>
               
                
               
          + ` </div>
        </div>

        <div class="eapp-events-calendar-popup-location-component eapp-events-calendar-popup-item-location">
        <div class="eapp-events-calendar-popup-location-title">
           
            <div class="eapp-events-calendar-popup-location-titleText">Nota:</div>
        </div>
        <div class="eapp-events-calendar-popup-location-content">
            <div><?= $citas['not_age'] ?></div>
           
        </div>
    </div>
    </div>
</div>`, `<?= $citas['tit_age'] ?>`)' class="events "
                                       >
                                         <div class="event  securities anuncio">
                                             <p class="time" style="font-size: 0.8rem;" ><?= $citas['horario'] ?>  <?= substr($nombrecita,0,15) ?>...</p>
                                           
                                           
                                            
                                        </div> 
                                    </div>
                                <?php endforeach;
                                ?>
                            </div>
                        </div>

                    <?php endforeach;
                    ?>

                    <!-- <div class="day mon">
                        <div class="date">
                            <p class="date-day">Lunes</p>
                            <p class="date-num">9</p>
                        </div>
                        <div class="events ">
                            <div class="event start-2 end-5 securities anuncio">
                                <p class="title">Securities Regulation</p>
                                <p class="time">2 PM - 5 PM</p>
                                <p class="time"> <input id="startDialog" type="button" value="Ver detalle" />
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="day tues">
                        <div class="date">
                            <p class="date-day">Martes</p>
                            <p class="date-num">10</p>
                        </div>
                        <div class="events">
                            <div class="event start-10 end-12 corp-fi  anuncio ">
                                <p class="title">Corporate Finance</p>
                                <p class="time">11 AM - 12 PM</p>
                            </div>
                            <div class="event start-1 end-4 ent-law anuncio">
                                <p class="title">Entertainment Law</p>
                                <p class="time">1PM - 4PM</p>
                            </div>
                        </div>
                    </div>
                    <div class="day wed">
                        <div class="date">
                            <p class="date-day">Miercoles</p>
                            <p class="date-num">11</p>
                        </div>
                        <div class="events">
                            <div class="event start-12 end-1 writing anuncio">
                                <p class="title">Writing Seminar</p>
                                <p class="time">12 AM - 12 PM</p>
                            </div>
                            <div class="event start-2 end-5 securities">
                                <p class="title">Securities Regulation</p>
                                <p class="time">2 PM - 5 PM</p>
                            </div>
                        </div>
                    </div>
                    <div class="day thurs">
                        <div class="date">
                            <p class="date-day">Jueves</p>
                            <p class="date-num">12</p>
                        </div>
                        <div class="events">
                            <div class="event start-10 end-12 corp-fi">
                                <p class="title">Corporate Finance</p>
                                <p class="time">11 AM - 12 PM</p>
                            </div>
                            <div class="event start-1 end-4 ent-law">
                                <p class="title">Entertainment Law</p>
                                <p class="time">1PM - 4PM</p>
                            </div>
                        </div>
                    </div>
                    <div class="day fri">
                        <div class="date">
                            <p class="date-day">Viernes</p>
                            <p class="date-num">13</p>
                        </div>
                        <div class="events">
                        </div>
                    </div>

                    <div class="day fri">
                        <div class="date">
                            <p class="date-day">Sabado</p>
                            <p class="date-num">14</p>
                        </div>
                        <div class="events">
                        </div>
                    </div> -->
                </div>
            </div>


        </div>
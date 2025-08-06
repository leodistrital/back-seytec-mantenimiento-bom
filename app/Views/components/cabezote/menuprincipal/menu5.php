 <li>
     <a href="#"><span><?= $menu['nom_mep'] ?></span></a>
     <ul>
         <li><a href="http://www.cortografias.com/" target="_blank"><span><?=traduccirlabeldb('Cortografías'); ?></span></a></li>
         <!-- <li><a href="https://bogotamarket.com/docs/ES_CALL-COLOMBIA-INDUSTRY%20ACADEMY_BAM%202023.pdf" target="_blank"><span><?=traduccirlabeldb('COLOMBIA LOCARNO INDUSTRY ACADEMY'); ?></span></a></li> -->
         <li><a href="https://bogotamarket.com/docs/CALL_2024_INDUSTRY_ACADEMY_AMERICA_LATINA_ES CR_CO_MX.pdf" target="_blank"><span><?=traduccirlabeldb('COLOMBIA LOCARNO INDUSTRY ACADEMY'); ?></span></a></li>
         <li><a href="https://bogotamarket.com/docs/BAM-Programa_etnico_2024.pdf" target="_blank"><span><?=traduccirlabeldb('PROGRAMA ÉTNICO'); ?></span></a></li>
         
         <?php
         if($menuActivo==1) { ?>
         <li><a href="/regiones"><span><?= $submenus['tit_con_esp'] ?></span></a></li>
         <?php } ?>

     </ul>
 </li>

 
<section class="bannerGuiaHSection">
    <div class="sliderGuia">
        <?php foreach ($bannersdata as $item) : ?>
        <div class="gSlide">
            <div class="vAlign">
                <div>
                    <a href="<?= $item['link'] ?>" target="_blank">
                        <!-- <img style="width:100%" src="https://bogotamarket.com/images/guia/linguaviva.jpg" alt="banners"> -->
                        <img src="<?= $item['imagenban'] ?>" alt="Nombre img">
                    </a>
                </div>
            </div>
        </div>
        <?php  endforeach ?>
        <!-- <div class="gSlide">
             <div class="vAlign">
                <div>
                   
                    <img style="width:100%" src="https://bogotamarket.com/images/guia/congo.jpg" alt="banners">
                </div>
            </div>

        </div> -->

        <!-- <div class="gSlide">
             <div class="vAlign">
                <div>
                   
                    <img style="width:100%" src="https://bogotamarket.com/images/guia/sonata.jpg" alt="banners">
                </div>
            </div>
        </div> -->
        <!-- 
        <div class="gSlide">
             <div class="vAlign">
                <div>
                    <img style="width:100%" src="https://bogotamarket.com/images/guia/otb.jpg" alt="banners">
                </div>
            </div>
        </div> -->


        <!-- <div class="gSlide">
            <div class="vAlign">
                <div>
                    <img style="width:100%" src="https://bogotamarket.com/images/guia/Banner_Prueba_2.jpg"
                        alt="banners">
                </div>
            </div>
        </div> -->
        <?php  //} ?>
    </div>
</section>
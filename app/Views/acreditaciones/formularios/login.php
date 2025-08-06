<div class="ingBAM" id="divocultamuestra">
    <h1>Ingresar a BAM</h1>
    <p><?=traduccirlabeldb('Espacio exclusivo de usuarios registrados para acreditarse y consultar el espacio de industria.'); ?></p>
    <form id="formLogin" name="formLogin" method="POST" enctype="multipart/form-data">
        <div class="sectExtraInt">

            <section id="mainForm" class="contFormIng">
                <div class="gCenter">
                    <fieldset>
                        <label class="gLabel required">
                            <input type="text" name="lemail" id="lemail" placeholder="Usuario / Correo electrónico">
                        </label>
                        <label class="gLabel required">
                            <input type="password" name="lpass" id="lpass" placeholder="Contraseña">
                        </label>
                        <div class="contBtns">
                            <button type="submit" class="gButton btnING">Ingresar</button>
                        </div>
                    </fieldset>
                </div>
            </section>
            <span class="btnPass"><a href="/registro">Registrarme en el BAM</a></span>
            <span class="btnPass"><a href="/registro/olvide" class="openFancy" data-rel="relelenco">Olvidé mi
                    contraseña</a></span>
        </div>
    </form>

    <?php if (empty($_SESSION['username'])) { ?>
    <p><?=traduccirlabeldb('Si usted hizo parte de la edición 14, solo debe ingresar con su usuario y contraseña. Si olvidó sus datos, haga clic en "recordar contraseña" para restablecerlos.'); ?></p>
    <?php } ?> 
</div>
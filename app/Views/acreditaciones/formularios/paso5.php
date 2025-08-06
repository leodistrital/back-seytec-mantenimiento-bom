<section class="gSection sTwo">
    <h2>Su formulario de solicitud ha sido enviado  / <em>Your application form has been sent</em> </h2>
    <div class="gContent">
        <div class="gCol col2">
            <div>
                <p>Gracias. Al hacer clic en el botón FINALIZAR, su solicitud de acreditación será enviada y se tramitará lo antes posible. Le agradecemos por su paciencia, el tiempo de aprobación podrá tardar hasta 5 días hábiles. Le comunicaremos por correo electrónico si su solicitud ha sido aceptada. La tarifa Early Bird se determina en función de la fecha de envío de la solicitud (antes del 16 de junio) y sólo es válida si se efectúa el pago antes del 23 de junio. <br> Cuando y en el caso que su solicitud sea aceptada, podrá proceder al pago de la tarifa de acreditación en nuestra plataforma.
                </p><br>
            </div>
            <div>
                <p><em>Thank you. By clicking the FINISH button, your accreditation request will be sent and processed as soon as possible. We kindly ask for your patience, processing time may take up to 5 business days. We will inform you by e-mail whether your application has been accpeted. The early bird rate is determinded by the date the application is sent (before June 16) and is only valid if paid by June 23. <br>If and when your aplication is accepted, you will then be able to proceed with the payment of your accreditation fee.
                    </em></p><br>
            </div>
        </div>

    </div>
    <form id="formpaso5" name="formpaso5" method="POST" enctype="multipart/form-data">
        <div class="contBtns">

            <div class="gCol">
                <div>
                    <p>
                        <label class="gCR">
                            He leído y acepto las <a href="https://www.bogotamarket.com/docs/T%26C_BAM_2024.pdf"
                                target="_blank">Condiciones Generales</a> y la
                            <a href="https://bogotamarket.com/docs/Aviso_privacidad_BAM.pdf" target="_blank">normativa
                                sobre protección de datos</a>. Confirmo que tengo al menos 18
                            años.

                            </br> <em> I have read and accept the <a
                                    href="https://www.bogotamarket.com/docs/T%26C_BAM_2024.pdf" target="_blank">General Terms
                                    and Conditions</a> and
                                the <a href="https://bogotamarket.com/docs/Aviso_privacidad_BAM.pdf"
                                    target="_blank">data protection regulations</a>. I confirm that I am at least 18
                                years old.</em>
                            <input type="checkbox" name="acepto" id="acepto" value="1">
                            <span class="icoC"></span>
                        </label>
                    </p>
                </div>
                <div>
                </div>
            </div>
            </br>
            <?php if($datauser['divpaso4'] == 1) { ?>
            <button type="submit" class="gButton">Finalizar / finish</button>
            <?php }  ?>
        </div>
    </form>
</section>
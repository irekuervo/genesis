<?php
    $settingLogin = ControllerLogin::ctrGetSetting('db_setting');
    $usa_carrousel_ini = $settingLogin["usa_carrousel_ini"];
    $usa_carrusel_txt = $settingLogin["usa_carrusel_txt"];
    $usa_alta_user = $settingLogin["usa_alta_user"];
    $usa_recovery_user = $settingLogin["usa_recovery_user"];

    //JB-Obtengo la ruta absoluta desde el config.ini 
    $config = parse_ini_file('config.ini');
    $base_url = $config["db.config.absolute"];  
?>
<div class="app-container app-theme-white body-tabs-shadow">
        <div class="app-container">
            <div class="h-100">
                <div class="h-100 no-gutters row">

                    <?php 
                        if($usa_carrousel_ini=="1"){ ?>
                            <div class="d-none d-lg-block col-lg-4">
                                <div class="slider-light">
                                    <div class="slick-slider portadaPicture">
                                        <div>
                                            <div class="position-relative h-100 d-flex justify-content-center align-items-center" tabindex="-1">
                                                <div class="slide-img-bg" style="background-image: url('<?php echo $urlForImage.$one_url; ?>');"></div>
													<?php if($usa_carrusel_txt=="1"){ ?>
														<div class="slider-content">
															<h3><?php echo $one_title;?></h3>
															<p><?php echo $one_desc;?></p>
														</div>
													<?php } ?>
                                                </div>
                                        </div>
                                        <div>
                                            <div class="position-relative h-100 d-flex justify-content-center align-items-center" tabindex="-1">
                                                <div class="slide-img-bg" style="background-image: url('<?php echo $urlForImage.$two_url; ?>');"></div>
                                                   <?php if($usa_carrusel_txt=="1"){ ?>
                                                        <div class="slider-content">
                                                            <h3><?php echo $two_title;?></h3>
                                                            <p><?php echo $two_desc;?></p>
                                                        </div>
                                                    <?php } ?>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="position-relative h-100 d-flex justify-content-center align-items-center" tabindex="-1">
                                                <div class="slide-img-bg" style="background-image: url('<?php echo $urlForImage.$three_url; ?>');"></div>
                                                   <?php if($usa_carrusel_txt=="1"){ ?>
                                                        <div class="slider-content">
                                                            <h3><?php echo $three_title;?></h3>
                                                            <p><?php echo $three_desc;?></p>
                                                        </div>
                                                    <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-8">
                            
                    <?php 
                        }else{
                            echo '<div class="h-100 d-flex bg-white justify-content-center align-items-center col-md-12 col-lg-12">';
                        }
                    ?>

                        <div class="mx-auto app-login-box col-sm-12 col-md-10 col-lg-9">                        
                            <input type="hidden" id="base_url" value="<?php echo $base_url;?>">
                            <!-- VISTA LOGIN -->
                            <div class="modulo-login">
                                <!-- <div class="app-logo" > -->
									<img src="https://sistemas.mininterior.gob.ar/add/genesis/views/assets/images/logo-inverse.png" alt="" />
								<!-- </div> -->
                                <h4 class="mb-0">
                                    <span>Ingresa tu cuenta.</span>
                                </h4>

                                <?php if($usa_alta_user == "1"){ ?>
                                    <h6 class="mt-3">No tenes cuenta? <a href="javascript:getSignUp();" class="text-primary">Crear una</a></h6>
                                <?php } ?>
                                <?php if($usa_recovery_user == "1"){ ?>
                                    <h6 class="mt-0">Se te olvido tu contraseña? <a href="javascript:getRecovery();" class="text-primary">recuperar</a></h6>
                                <?php } ?>

                                <div class="divider row"></div>
                                
                                <div>
                                    <form class="">
                                        <div class="form-row">

                                            <div class="col-md-6">
                                                <div class="position-relative form-group">
                                                    <label for="emailin" class="">Mail</label>
                                                    <input name="email" id="emailin" placeholder="Mail aqui..." type="email" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="position-relative form-group">
                                                <label for="emailin" class="">Contraseña</label>
                                                    <div class="input-group">
                                                        <input class="form-control" type="password" placeholder="Contraseña aqui..." id="passin" name="login-password" aria-label="Password" aria-describedby="Password" autocomplete="off" onkeypress="if (event.which == 13) signInWhitEmailAndPassword();" required="">
                                                        <div class="input-group-append">
                                                            <button class="btn btn-outline-secondary" type="button" id="button-view"><i id="viewerPass" class="fas fa-eye" aria-hidden="true"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="position-relative form-check">
                                            <input name="check" id="okCheck" type="checkbox" class="form-check-input">
                                            <label for="exampleCheck" class="form-check-label">Mantener logueado?</label>
                                        </div>
                                        <div class="divider row"></div>
                                        <div class="d-flex align-items-center">
                                            <div class="ml-auto">
                                                <?php //if($usa_recovery_user == "1"){ ?>
                                                    <!-- <a href="javascript:getRecovery();" class="btn-lg btn btn-link">Recordar Contraseña</a> -->
                                                <?php //} ?>
                                                <a href="#" onclick="generateLogin()" class="btn btn-primary btn-lg loginIn">Ingresar</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- ALTA DE USUARIO -->
                            <div class="modulo-signup" style="display:none">
                                <!-- <div class="app-logo"> -->
                                    <img src="https://sistemas.mininterior.gob.ar/add/genesis/views/assets/images/logo-inverse.png" alt="" />
                                <!-- </div> -->
                                <h4 class="mb-0">
                                    <span class="d-block">Hola, vamos a pedirte unos pequeños datos</span>
                                    <span>Por favor, ingresá y define tus credenciales de acceso.</span></h4>
                                <h6 class="mt-3">¿Ya tenés una cuenta? <a href="javascript:getLogin();" class="text-primary">Ingresar</a></h6>
                                <div class="divider row"></div>

                                <div>
                                    <form class="">
                                        <div class="form-row">
                                            
                                            <div class="col-md-12">
                                                <div class="position-relative form-group">
                                                    <label for="nombreup" class="">Nombre completo</label>
                                                    <input name="text" id="nombreup" placeholder="Nombre completo aqui..." type="email" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="position-relative form-group">
                                                    <label for="emailup" class="">Mail</label>
                                                    <input name="emailup" id="emailup" placeholder="Email aqui..." type="email" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="position-relative form-group">
                                                <label for="emailup" class="">Contraseña</label>
                                                    <div class="input-group">
                                                        <input class="form-control" type="password" placeholder="Contraseña aqui..." id="passup" name="passup" aria-label="Password" aria-describedby="Password" autocomplete="off" onkeypress="if (event.which == 13) signInWhitEmailAndPassword();" required="">
                                                        <div class="input-group-append">
                                                            <button class="btn btn-outline-secondary" type="button" id="button-view-alta"><i id="viewerPassAlta" class="fas fa-eye" aria-hidden="true"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="divider row"></div>
                                        <div class="d-flex align-items-center">
                                            <div class="ml-auto">
                                            <?php
                                                $config = parse_ini_file('config.ini');
                                                $mail = $config["db.config.mail"];
                                                echo '<a href="#" onclick="generateUser(\''.$mail.'\')" class="btn btn-primary btn-lg loginIn">Alta to Dashboard</a>';
                                            ?>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <!-- RECUPERO DE CONTRASEÑA -->
                            <div class="modulo-recovery" style="display:none">
                                <!-- <div class="app-logo"> -->
                                    <img src="https://sistemas.mininterior.gob.ar/add/genesis/views/assets/images/logo-inverse.png" alt="" />
                                <!-- </div> -->
                                <h4 class="mb-0">
                                    <span class="d-block">Hola, para recuperar la contraseña vamos a necesitar que ingreses tu email</span>
                                    <span>Por favor, debe ser el mismo que usas habitualmente.</span></h4>
                                <h6 class="mt-3">¿Ya tenés una cuenta? <a href="javascript:getLogin();" class="text-primary">Ingresar</a></h6>
                                <div class="divider row"></div>

                                <div>
                                    <form class="">
                                        <div class="form-row">
                                            <div class="col-md-12">
                                                <div class="position-relative form-group">
                                                    <label for="emailrecovery" class="">Email</label>
                                                    <input name="emailrecovery" id="emailrecovery" placeholder="Email aqui..." type="email" class="form-control">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="divider row"></div>
                                        <div class="d-flex align-items-center">
                                            <div class="ml-auto">
                                                <a href="#" onclick="recoveryPass()" class="btn btn-primary btn-lg loginIn">recuperar password</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
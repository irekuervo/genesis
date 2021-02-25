<div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src">
                    <a href="<?php echo $front;?>">
				        <img src="https://sistemas.mininterior.gob.ar/add/genesis/views/assets/images/logo-inverse.png" class="img-fluid" />
                    </a>
				</div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    
            <div class="app-header__content">
            
                <?php if($settingFramework["header"]=="1" && $_SESSION["OWNER"]=="1"){
                //Podes reutilizar estos recursos o escribir otros por fuera de esta validación.    
                ?>
                    <div class="app-header-left">

                        <div class="search-wrapper">
                            <div class="input-holder">
                                <input type="text" class="search-input" placeholder="Buscar...">
                                <button class="search-icon"><span></span></button>
                            </div>
                            <button class="close"></button>
                        </div>
                        <ul class="header-menu nav">
                            <li class="nav-item">
                                <a href="javascript:void(0);" class="nav-link">
                                    <i class="nav-link-icon fa fa-database"> </i>
                                    Estadísticas
                                </a>
                            </li>
                            <li class="btn-group nav-item">
                                <a href="javascript:void(0);" class="nav-link">
                                    <i class="nav-link-icon fa fa-edit"></i>
                                    Proyectos
                                </a>
                            </li>

                            <li class="dropdown nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-link-icon fa fa-cog"></i>
                                    Configuraciones
                                </a>
                            </li>

                        </ul>
                    </div>
                    <?php }else{ ?>

                        <div class="app-header-left">

                            <ul class="header-menu nav">

                                <li class="btn-group nav-item">
                                    <a href="<?php echo $front."usuarios";?>" class="nav-link">
                                        <i class="nav-link-icon fa fa-edit"></i>
                                        Usuarios
                                    </a>
                                </li>

                            </ul>
                            </div>

                    <?php  } ?>

                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <!--<button type="button" tabindex="0" class="dropdown-item">User Account</button>
                                            <button type="button" tabindex="0" class="dropdown-item">Settings</button>
                                            <h6 tabindex="-1" class="dropdown-header">Header</h6>-->
                                            <a class="btn btn-default dropdown-item" href="logout" role="button"> Salir</a>
                                            
                                            <?php if($_SESSION["OWNER"]=="1"){ ?>
                                                <div tabindex="-1" class="dropdown-divider"></div>
                                                <a class="btn btn-default dropdown-item" href="setting-page" role="button"> Configuración</a>
                                            <?php } ?>

                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading nameHeader">
                                        <?php echo $_SESSION["NAME"]; ?>
                                    </div>
                                    <div class="widget-subheading emailHeader">
                                        <?php echo $_SESSION["EMAIL"]; ?>
                                    </div>
                                </div>
                                <!--<div class="widget-content-right header-user-info ml-3">
                                    <button type="button" class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
                                        <i class="fa text-white fa-calendar pr-1 pl-1"></i>
                                    </button>
                                </div>-->
                            </div>
                        </div>
                    </div>        </div>
            </div>
        </div>  
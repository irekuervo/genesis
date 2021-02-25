<!DOCTYPE html>
<html lang="en">
<?php
    session_start(); 
    $front = routerClass::getRouterFront();
    $urlForImage = routerClass::getRouterImage();

    $config = parse_ini_file('config.ini');

    $settingImages = ControllerLogin::ctrGetSettingImages();
    $one_url = $settingImages[0]["url_image"];
    $one_title = $settingImages[0]["title"];
    $one_desc = $settingImages[0]["description"];

    $two_url = $settingImages[1]["url_image"];
    $two_title = $settingImages[1]["title"];
    $two_desc = $settingImages[1]["description"];

    $three_url = $settingImages[2]["url_image"];
    $three_title = $settingImages[2]["title"];
    $three_desc = $settingImages[2]["description"];

    $ico_logo = $settingImages[3]["url_image"];

?>
    <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"crossorigin="anonymous">

<head>
<?php
    include_once('module/template/head/header.php');
?>
    <link href="<?php echo $front."views/assets/css/main.css";?>" rel="stylesheet">

     <!-- DataTables -->
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">

    
</head>
<body>

    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">

    <?php
    if( !isset($_SESSION["LOGIN"]) || !$_SESSION["LOGIN"]=="Ok"){
        $rutas = array();
        $rutas = explode("/", $_GET["ruta"]);          
        $valor =  $rutas[2];

        if($valor=="recovery"){
            include('module/template/'.$rutas[2].'.php');
        }else{
            include('module/login/pages-login.php');
        }
        // include "module/login/pages-login.php";
    }else{
        $settingFramework = ControllerLogin::ctrGetSetting('sp_framework');
        include_once('module/template/head/head.php');
                
        if($settingFramework["config_button"]=="1" && $_SESSION["OWNER"]=="1"){
            include_once('module/template/setting.php');
        }
        echo '<div class="app-main">';
        include_once('module/template/menu/menu.php');
        echo '<div class="app-main__outer">
                <div class="app-main__inner">';
                    $rutas = array();

                    if(isset($_GET["ruta"])){
                        $rutas = explode("/", $_GET["ruta"]);
                        $valor =  $rutas[0];

                        if($valor == "usuarios" || 
                           $valor == "setting-page" ||
                           $valor == "elements-buttons-standard" ||
                           $valor == "elements-dropdowns" ||
                           $valor == "elements-icons" ||
                           $valor == "elements-badges-labels" ||
                           $valor == "elements-cards" ||
                           $valor == "elements-list-group" ||
                           $valor == "elements-navigation" ||
                           $valor == "elements-utilities" ||
                           $valor == "components-tabs" ||
                           $valor == "components-accordions" ||
                           $valor == "components-notifications" ||
                           $valor == "components-modals" ||
                           $valor == "components-progress-bar" ||
                           $valor == "components-tooltips-popovers" ||
                           $valor == "components-carousel" ||
                           $valor == "components-calendar" ||
                           $valor == "components-pagination" ||
                           $valor == "components-scrollable-elements" ||
                           $valor == "components-scrollable-elements" ||
                           $valor == "components-maps" ||
                           $valor == "tables-regular" ||
                           $valor == "dashboard-boxes" ||
                           $valor == "forms-controls" ||
                           $valor == "forms-layouts" ||
                           $valor == "forms-validation" ||
                           $valor == "pages-template" ||
                           $valor == "logout" ||
                           $valor == "tables-dinamic" ||
                           $valor == "equipos" ||
                           $valor == "charts-chartjs"
                           && $_SESSION["OWNER"]=="1"){
                            include("module/".$rutas[0].".php");

                        //Agregar lo que corresponda a las vistas del usuario.
                        }else if($valor == "usuarios" || $valor == "setting-page" && $_SESSION["OWNER"]=="0"){
                            include('module/template/started.php');
                        }else{
                            include("module/error404.php");//Me falta agregar una vista #404
                        }
                    }else{
                        if($_SESSION["OWNER"]=="0"){
                            include('module/pages-template.php');
                        }else{
                            include('module/template/started.php'); 
                        }
                    }


    ?>
            </div>
            <?php include_once('module/template/footer/footer.php'); ?>
            </div>
                <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>

    <?php
    }
    ?>
    <?php include_once('module/modals/modal.php'); ?>
    
    <!-- HIDEN -->
    <input type="hidden" value="<?php echo $front;?>" id="url_base">
    <input type="hidden" value="<?php echo $config["db.config.mail"];?>" id="configmail">

    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/jquery.min.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/main.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/sessions.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/sweetalert.min.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/usuarios.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/usuarios.js";?>"></script>
    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/datatables.js";?>"></script> 

    <!-- DataTables -->
    <script type="text/javascript" src="//cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript" src="<?php echo $front."views/assets/scripts/setting.js";?>"></script>    

</body>

<?php //include_once('module/modals/modal.php'); ?>
</html>
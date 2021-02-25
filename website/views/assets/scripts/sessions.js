//VARIABLE GLOBALES


//Ejecutar Carrousel de imágenes del login
function rollImages(){
    setInterval(function(){ 
        $(".slick-next").trigger("click");
    }, 3000);
}

rollImages();

//VALIR Y ENTRAR
function generateLogin(){

    if($('#okCheck').prop('checked') ) {

        localStorage.setItem('okCheck',true);
        localStorage.setItem('login-email',$("#emailin").val());
        localStorage.setItem('login-password',$("#passin").val() );
    }else{
        localStorage.removeItem('login-email');
        localStorage.removeItem('login-password');
        localStorage.setItem('okCheck',false);
    }

    $(".loginIn").hide();

    var email = $("#emailin").val();
    var pass = $("#passin").val();

    if(email==""){
        swal("Validación!", 
             "Revisá por favor revisá el campo [email] debe tener un valor.", "warning");
             $(".loginIn").show();
        return false;
    }
    if(pass==""){
        swal("Validación!", 
             "Revisá por favor revisá el campo [password] debe tener un valor.", "warning");
             $(".loginIn").show();
        return false;
    }

    var url_base = $("#url_base").val();

    let formData = new FormData();
    formData.append('user', email);
    formData.append('pass', pass);
    
    fetch(url_base + 'api/perfiles/login', {
        method: "POST",
        body: formData
    })
    .then( resp => resp.json() )
    .then( respObj => {
        //Espera la respuesta de la API y consulta siempre por 0 (cero), si es correcto.
        if (respObj.status == 0){

            swal("Excelente!", respObj.messege, "success");

            function show_popup(){ window.location.href = url_base; }; 
            
            window.setTimeout( show_popup, 2000 );

        }else{
            
            $(".loginIn").show();
            swal("¡Algo salió mal!", respObj.messege, "error");
            
        }
    })
    .catch( error => {
        
        $(".loginIn").show();
        swal("¡Algo salió mal!", error, "error");
        
    });

}

if(localStorage.getItem('okCheck')=="true"){
    console.log(localStorage.getItem('okCheck'));
    $("#emailin").val(localStorage.getItem('login-email'));
    $("#passin").val(localStorage.getItem('login-password'));
    $('#okCheck').prop('checked',true);
}else{
    console.log(localStorage.getItem('okCheck'));
    localStorage.removeItem('login-email');
    localStorage.removeItem('login-password');
    localStorage.setItem('okCheck',false);
}

//MOSTRAR U OCULTAR CONTRASEÑA LOGIN
$("#button-view").click(function(){
    if ($("#viewerPass").hasClass('fas fa-eye')){
        $("#viewerPass").removeClass( "fas fa-eye" ).addClass( "fas fa-eye-slash" );
        $("#passin").attr('type', 'text');
        $("#passup").attr('type', 'text');
    }else{
        $("#viewerPass").removeClass( "fas fa-eye-slash" ).addClass( "fas fa-eye" );
        $("#passin").attr('type', 'password');
        $("#passup").attr('type', 'password');
    }   
});

//MOSTRAR U OCULTAR CONTRASEÑA DEL ALTA
$("#button-view-alta").click(function () {
    if ($("#viewerPassAlta").hasClass('fas fa-eye')) {
        $("#viewerPassAlta").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
        $("#passup").attr('type', 'text');
    } else {
        $("#viewerPassAlta").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
        $("#passup").attr('type', 'password');
    }
});

//MOSTRAR U OCULTAR CUANDO SE RECUPERA LA CONTRASEÑA
$("#button-viewRecovery1").click(function(){
    if ($("#viewerPass1").hasClass('fas fa-eye')){
        $("#viewerPass1").removeClass( "fas fa-eye" ).addClass( "fas fa-eye-slash" );
        $("#login-passwordOne").attr('type','text');
    }else{
        $("#viewerPass1").removeClass( "fas fa-eye-slash" ).addClass( "fas fa-eye" );
        $("#login-passwordOne").attr('type','password');
    }
});

//MOSTRAR U OCULTAR CUANDO REPITE LA CONTRASEÑA AL RECUPERAR
$("#button-viewRecovery2").click(function(){
    
    if ($("#viewerPass2").hasClass('fas fa-eye')){
        $("#viewerPass2").removeClass( "fas fa-eye" ).addClass( "fas fa-eye-slash" );
        $("#login-passwordTwo").attr('type','text');
    }else{
        $("#viewerPass2").removeClass( "fas fa-eye-slash" ).addClass( "fas fa-eye" );
        $("#login-passwordTwo").attr('type','password');
    }

});
//MOSTRAR U OCULTAR 1RA CONTRASEÑA DEL ALTA GENESIS
$("#button-view-primeracontra, #button-view-primeracontra-update").click(function () {
    var descripcion = $(this).attr("id");
    if (descripcion == "button-view-primeracontra"){
        if ($("#viewerPassAltaPrimera").hasClass('fas fa-eye')){
            $("#viewerPassAltaPrimera").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
            $("#pass1").attr('type', 'text');
        } else {
            $("#viewerPassAltaPrimera").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
            $("#pass1").attr('type', 'password');
        }
    } else {
        if ($("#viewerPassAltaPrimeraUpdate").hasClass('fas fa-eye')){
            $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
            $("#pass1Up").attr('type', 'text');
        } else {
            $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
            $("#pass1Up").attr('type', 'password');
        }
    }
});

//MOSTRAR U OCULTAR 2 CONTRASEÑA ALTA GENESIS
 $("#button-view-segundacontra, #button-view-segundacontra-update").click(function () {
    var descripcion = $(this).attr("id");
    if (descripcion == "button-view-segundacontra"){
        if ($("#viewerPassAltaRepetida").hasClass('fas fa-eye')) {
            $("#viewerPassAltaRepetida").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
            $("#pass2").attr('type', 'text');
        } else {
            $("#viewerPassAltaRepetida").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
            $("#pass2").attr('type', 'password');
        }
    } else{
        if ($("#viewerPassAltaRepetidaUpdate").hasClass('fas fa-eye')) {
            $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
            $("#pass2Up").attr('type', 'text');
        } else {
            $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
            $("#pass2Up").attr('type', 'password');
        }
    }
});

//MOSTRAR U OCULTAR 2Da CONTRASEÑA DEL ALTA GENESIS ver usuarios
$("#button-view-segundacontra-updateTodos").click(function () {
    if ($("#viewerPassAltaRepetidaUpdateTodos").hasClass('fas fa-eye')) {
        $("#viewerPassAltaRepetidaUpdateTodos").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
        $("#pass2UpTodos").attr('type', 'text');
    } else {
        $("#viewerPassAltaRepetidaUpdateTodos").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
        $("#pass2UpTodos").attr('type', 'password');
    }
    });

    

//     if ($("#viewerPassAltaRepetidaUpdate").hasClass('fas fa-eye')) {
//         $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//         $("#pass2Up").attr('type', 'text');
//     } else {
//         $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//         $("#pass2Up").attr('type', 'password');
//     }
//     });

// $("#button-view-primeracontra-update").click(function () {
//     if ($("#viewerPassAltaPrimeraUpdate").hasClass('fas fa-eye')) {
//         $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//         $("#pass1Up").attr('type', 'text');
//     } else {
//         $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//         $("#pass1Up").attr('type', 'password');
//     }
// });

//MOSTRAR U OCULTAR 1era CONTRASEÑA DE ALTA 
// $("#button-view-primeracontra").click(function () {
// if ($("#viewerPassAltaPrimera").hasClass('fas fa-eye')){
//     $("#viewerPassAltaPrimera").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//     $("#pass1").attr('type', 'text');
// } else {
//     $("#viewerPassAltaPrimera").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//     $("#pass1").attr('type', 'password');
// }
// });

// //MOSTRAR U OCULTAR 2Da CONTRASEÑA DEL ALTA GENESIS
// $("#button-view-segundacontra").click(function () {
//     if ($("#viewerPassAltaRepetida").hasClass('fas fa-eye')) {
//         $("#viewerPassAltaRepetida").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//         $("#pass2").attr('type', 'text');
//     } else {
//         $("#viewerPassAltaRepetida").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//         $("#pass2").attr('type', 'password');
//     }
// });

// //MOSTRAR U OCULTAR 1era CONTRASEÑA DE UPDATE GENEIS 
// $("#button-view-primeracontra-update").click(function () {
//     if ($("#viewerPassAltaPrimeraUpdate").hasClass('fas fa-eye')){
//         $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//         $("#pass1Up").attr('type', 'text');
//     } else {
//         $("#viewerPassAltaPrimeraUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//         $("#pass1Up").attr('type', 'password');
//     }
//     });
    
// //MOSTRAR U OCULTAR 2Da CONTRASEÑA DEL UPDATE GENESIS
// $("#button-view-segundacontra-update").click(function () {
//     if ($("#viewerPassAltaRepetidaUpdate").hasClass('fas fa-eye')) {
//         $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye").addClass("fas fa-eye-slash");
//         $("#pass2Up").attr('type', 'text');
//     } else {
//         $("#viewerPassAltaRepetidaUpdate").removeClass("fas fa-eye-slash").addClass("fas fa-eye");
//         $("#pass2Up").attr('type', 'password');
//     }
//     });

//MOSTRAR U OCULTAR EL LOGIN, ALTA Y RECUPERAR
function getSignUp(){
    $(".modulo-login").hide();
    $(".modulo-recovery").hide();
    $(".modulo-signup").show();
}

function getLogin(){
    $(".modulo-signup").hide();
    $(".modulo-recovery").hide();
    $(".modulo-login").show();
}

function getRecovery(){
    $(".modulo-login").hide();
    $(".modulo-recovery").show();
}

function getUppercarse(texto) {
    var letters = "ABCDEFGHYJKLMNÑOPQRSTUVWXYZ";
    for (i = 0; i < texto.length; i++) {
        if (letters.indexOf(texto.charAt(i), 0) != -1) {
            return 1;
        }
    }
    return 0;
}

function getNumber(texto) {
    var numbers = "1234567890";
    for (i = 0; i < texto.length; i++) {
        if (numbers.indexOf(texto.charAt(i), 0) != -1) {
            return 1;
        }
    }
    return 0;
}

//ALTA DE RESGISTRO DE USUARIOS
function generateUser(mail) {
    var url_base = $("#url_base").val();

    var createAccountName = $("#nombreup").val();
    if (createAccountName == '') {
        $("#nombreup").addClass("is-invalid");
        return false;
    }

    var createAccountEmail = $("#emailup").val();
    if (createAccountEmail == '') {
        $("#emailup").addClass("is-invalid");
        return false;
    } else if (createAccountEmail.indexOf(mail) == -1) {
        swal("Algo salió mal!", "El dominio de este mail [" + createAccountEmail.substr(createAccountEmail.indexOf("@")) + "] debe pertenecer al Ministerio del Interior.", "error");
        return false;
    
    }

    if ($("#emailup").val().indexOf('@', 0) == -1 || $("#emailup").val().indexOf('.', 0) == -1) {
        $("#emailup").addClass("is-invalid");
        swal("Algo salió mal!", "El correo electrónico introducido no es correcto.", "error");
        return false; 
    }

    var createAcountPassword = $("#passup").val();
    if (createAcountPassword == '') {
        $("#passup").addClass("is-invalid");
        return false;
    }
    if (createAcountPassword.length < 8 || createAcountPassword.length > 20 || getUppercarse(createAcountPassword) == 0 || getNumber(createAcountPassword) == 0) {
        $("#passup").addClass("is-invalid");
        swal("Validación", "Su contraseña debe tener entre 8 y 20 caracteres, contener letras, números y alguna letra en mayúscula.", "warning");
        return false;
    }

    fetch(url_base + 'api/perfiles/createup', {
        method: "POST",
        headers: new Headers({
            'Content-Type': 'application/x-www-form-urlencoded',
        }),
        body: "first_name=" + createAccountName + "&user=" + createAccountEmail + "&pass=" + createAcountPassword
    })
        .then(resp => resp.json())
        .then(respObj => {
            if (respObj.status == 0) {
                swal("Excelente!", respObj.messege, "success");

                setTimeout(function () {
                    location.href = url_base + "login";
                }, 2000);

            } else {
                swal("Algo salió mal!", respObj.messege, "error");
            }
        })
        .catch(error => {
            swal("Algo salió mal!", error, "error");
            console.log(error);
        });

}

//ENVIO POR MAIL PARA RECUPERAR CONTRASEÑA DE LOS USUARIOS
function recoveryPass() { 
    var url_base = $("#url_base").val();
    var emailrecovery = $("#emailrecovery").val();
    if(emailrecovery == ''){
        $("#emailrecovery").addClass("is-invalid");
        return false;
    }

    if($("#emailrecovery").val().indexOf('@', 0) == -1 || $("#emailrecovery").val().indexOf('.', 0) == -1) {
        $("#emailrecovery").addClass("is-invalid");
        swal("Algo salió mal!", "El campo [Email] no corresponde con el formato de un correo electrónico.", "error");
        return false;
    }

    fetch(url_base + 'api/perfiles/recovery',{
        method: "POST",
        headers: new Headers({
            'Content-Type': 'application/x-www-form-urlencoded',
        }),
        body: "email="+emailrecovery+"&base_url="+url_base
    })
    .then( resp => resp.json() )
    .then( respObj => {
        if (respObj.status == 0){
            swal("Excelente!", respObj.messege, "success");

            setTimeout(function() {
              location.href ="login";
            },3000);

        }else{
            swal("Algo salió mal!", respObj.messege, "error");
        }
    })
    .catch( error => {
        swal("Algo salió mal!", error, "error");
        console.log(error);
    }); 
}

/*=============================================
CONFIRMAR PARA RECUPERAR LA CONTRASEÑA
=============================================*/
function forgotPass() {     
    var url_base = $("#url_base").val();
    var hash_session = $("#hash_session").val();

    var emailforgot1 = $("#login-passwordOne").val();
    if(emailforgot1 == ''){
        $("#login-passwordOne").addClass("is-invalid");
        return false; 
    }
    if(emailforgot1.length < 8 || emailforgot1.length > 20 || getUppercarse(emailforgot1)==0 || getNumber(emailforgot1)==0){
        $("#login-passwordOne").addClass("is-invalid");
        swal("Validación", "Su contraseña debe tener entre 8 y 20 caracteres, contener letras y números.", "warning");
        return false;    
    }

    var emailforgot2 = $("#login-passwordTwo").val();
    if(emailforgot2 == ''){
        $("#login-passwordTwo").addClass("is-invalid");
        return false;
    }

    if(emailforgot2.length < 8 || emailforgot2.length > 20 || getUppercarse(emailforgot2)==0 || getNumber(emailforgot2)==0){
        $("#login-passwordOne").addClass("is-invalid");
        $("#login-passwordTwo").addClass("is-invalid");
        swal("Validación", "Su contraseña debe tener entre 8 y 20 caracteres, contener letras y números.", "warning");
        return false;    
    }

    if(emailforgot1!=emailforgot2){
        $("#login-passwordOne").addClass("is-invalid");
        $("#login-passwordTwo").addClass("is-invalid");
        swal("UPS! tranquilx!", "Las contraseñas no coinciden. Corregilo y volvé a intentar", "error");
        return false;
    }
    console.log(url_base+'api/perfiles/recovery/update');
    fetch(url_base+'api/perfiles/recovery/update',{
        method: "PUT",
        headers: new Headers({
            'Content-Type': 'application/x-www-form-urlencoded',
        }),
        body: "newpass="+emailforgot1+"&hash_session="+hash_session
    })
    .then( resp => resp.json() )
    .then( respObj => {
        if (respObj.status == 0){
            swal("Excelente!", respObj.messege, "success");

            setTimeout(function() {
              location.href = url_base+"login";
            },3000);

        }else{
            swal("Algo salió mal!", respObj.messege, "error");
        }
    })
    .catch( error => {
        swal("Algo salió mal!", error, "error");
        console.log(error);
    }); 

};


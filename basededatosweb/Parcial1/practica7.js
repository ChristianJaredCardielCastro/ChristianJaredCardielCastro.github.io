function validar(posicion){
    var cuadro = document.getElementById("cuadro" + posicion);

    if(cuadro.value != "x" && cuadro.value != "o"){
        console.log(cuadro.value = " -- No es un valor valido");
        cuadro.value = '';
        return;
    } else {

        var cuadro1 =  document.getElementById("cuadro1").value;
        var cuadro2 =  document.getElementById("cuadro2").value;
        var cuadro3 =  document.getElementById("cuadro3").value;
        var cuadro4 =  document.getElementById("cuadro4").value;
        var cuadro5 =  document.getElementById("cuadro5").value;
        var cuadro6 =  document.getElementById("cuadro6").value;
        var cuadro7 =  document.getElementById("cuadro7").value;
        var cuadro8 =  document.getElementById("cuadro8").value;
        var cuadro9 =  document.getElementById("cuadro9").value;

        switch(posicion) {
            case 1: 
            if(cuadro1 == cuadro2 && cuadro1 == cuadro3){
                alert("GANADOR -----> " + cuadro1)
            } else if(cuadro1 == cuadro5 && cuadro1 == cuadro9){
                alert("GANADOR -----> " + cuadro1)
            } else if(cuadro2 == cuadro5 && cuadro2 == cuadro8){
                alert("GANADOR -----> " + cuadro2)
            } else if(cuadro3 == cuadro6 && cuadro3 == cuadro9){
                alert("GANADOR -----> " + cuadro3)
            } else if(cuadro1 == cuadro4 && cuadro1 == cuadro7){
                alert("GANADOR -----> " + cuadro1)
            }
            break;
        }
    }
}
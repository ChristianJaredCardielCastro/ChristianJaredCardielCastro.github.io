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
          } else if(cuadro1 == cuadro5 && cuadro1 == cuadro2){
              alert("GANADOR -----> " + cuadro1)
          } if(cuadro1 == cuadro4 && cuadro1 == cuadro7){
            alert("GANADOR -----> " + cuadro1)
        }
          break;

          case 2:
            if(cuadro2 == cuadro5 && cuadro2 == cuadro8){
              alert("GANADOR -----> " + cuadro2)
          } else if(cuadro2 == cuadro1 && cuadro2 == cuadro3){
            alert("GANADOR -----> " + cuadro2)
        }
          break;

          case 3:
            if(cuadro3 == cuadro1 && cuadro3 == cuadro2){
              alert("GANADOR -----> " + cuadro3)
          } else if(cuadro3 == cuadro5 && cuadro3 == cuadro7){
            alert("GANADOR -----> " + cuadro3)
        } else if(cuadro3 == cuadro6 && cuadro3 == cuadro9){
          alert("GANADOR -----> " + cuadro3)
      }
          break;

          case 4:
            if(cuadro4 == cuadro5 && cuadro4 == cuadro6){
              alert("GANADOR -----> " + cuadro4)
          } else if(cuadro4 == cuadro1 && cuadro4 == cuadro7){
            alert("GANADOR -----> " + cuadro4)
        }
          break;

          case 5:
            if(cuadro5 == cuadro2 && cuadro5 == cuadro8){
              alert("GANADOR -----> " + cuadro5)
          } else if(cuadro5 == cuadro4 && cuadro5 == cuadro6){
            alert("GANADOR -----> " + cuadro5)
        } else if(cuadro5 == cuadro7 && cuadro5 == cuadro3){
          alert("GANADOR -----> " + cuadro5)
      } else if(cuadro5 == cuadro1 && cuadro5 == cuadro9){
        alert("GANADOR -----> " + cuadro5)
    }
          break;

          case 6:
            if(cuadro6 == cuadro3 && cuadro6 == cuadro9){
              alert("GANADOR -----> " + cuadro6)
          } else if(cuadro6 == cuadro5 && cuadro6 == cuadro4){
            alert("GANADOR -----> " + cuadro6)
        }
          break;

          case 7:
            if(cuadro7 == cuadro5 && cuadro7 == cuadro3){
              alert("GANADOR -----> " + cuadro7)
          } else if(cuadro7 == cuadro1 && cuadro7 == cuadro4){
            alert("GANADOR -----> " + cuadro7)
        } else if(cuadro7 == cuadro8 && cuadro7 == cuadro9){
          alert("GANADOR -----> " + cuadro7)
      }
          break;

          case 8:
            if(cuadro8 == cuadro7 && cuadro8 == cuadro9){
              alert("GANADOR -----> " + cuadro8)
          } else if(cuadro8 == cuadro5 && cuadro8 == cuadro2){
            alert("GANADOR -----> " + cuadro8)
        }
          break;

          case 9:
            if(cuadro9 == cuadro5 && cuadro9 == cuadro1){
              alert("GANADOR -----> " + cuadro9)
          } else if(cuadro9 == cuadro6 && cuadro9 == cuadro3){
            alert("GANADOR -----> " + cuadro1)
        } else if(cuadro9 == cuadro7 && cuadro9 == cuadro8){
          alert("GANADOR -----> " + cuadro1)
      }
          break;

      }
  }
}
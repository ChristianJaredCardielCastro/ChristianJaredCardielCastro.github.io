function validar(posicion) {
    function validar(posicion){
        var cuadro =document.getElementById("cuadro"+posicion);
     if(cuadro.value != "x" && cuadro.value != "o"){
        console.log("No es un valor válido");
        cuadro.value = '';
        return;
     }else{
        var cuadro1 = document.getElementById("cuadro1").value;
        var cuadro2 = document.getElementById("cuadro2").value;
        var cuadro3 = document.getElementById("cuadro3").value;
        var cuadro4 = document.getElementById("cuadro4").value;
        var cuadro5 = document.getElementById("cuadro5").value;
        var cuadro6 = document.getElementById("cuadro6").value;
        var cuadro7 = document.getElementById("cuadro7").value;
        var cuadro8 = document.getElementById("cuadro8").value;
        var cuadro9 = document.getElementById("cuadro9").value;
    
    
        switch(posicion){
            case 1:
                if(cuadro1 == cuadro2 && cuadro1 == cuadro3){
                    alert("Ganador----->"+ cuadro1)
                    pintar(1, 2, 3);
                }else if(cuadro1 == cuadro5 && cuadro1 == cuadro9){
                    alert("Ganador----->"+ cuadro1)
                    pintar(1, 5, 9);
                }else if(cuadro1 == cuadro4 && cuadro1 == cuadro7){
                    alert("Ganador----->"+ cuadro1)
                    pintar(1, 4, 7);
                }
                break;
    
                case 2:
                if(cuadro2 == cuadro1 && cuadro2 == cuadro3){
                    alert("Ganador----->"+ cuadro2)
                    pintar(1, 2, 3);
                }else if(cuadro2 == cuadro5 && cuadro2 == cuadro8){
                    alert("Ganador----->"+ cuadro2)
                    pintar(2, 5, 8);
                }
                break;
    
                case 3:
                    if(cuadro3 == cuadro2 && cuadro3 == cuadro1){
                        alert("Ganador----->"+ cuadro3)
                        pintar(3, 2, 1);
                    }else if(cuadro3 == cuadro5 && cuadro3 == cuadro7){
                        alert("Ganador----->"+ cuadro3)
                        pintar(3, 5, 7);
                    }else if(cuadro3 == cuadro6 && cuadro3 == cuadro9){
                        alert("Ganador----->"+ cuadro3)
                        pintar(3, 6, 9);
                    }
                    break;
    
                    case 4:
                if(cuadro4 == cuadro1 && cuadro4 == cuadro7){
                    alert("Ganador----->"+ cuadro4)
                    pintar(1, 4, 7);
                }else if(cuadro4 == cuadro5 && cuadro4 == cuadro6){
                    alert("Ganador----->"+ cuadro4)
                    pintar(4, 5, 6);
                }
                break;
    
                case 5:
                    if(cuadro5 == cuadro2 && cuadro5 == cuadro8){
                        alert("Ganador----->"+ cuadro5)
                        pintar(5, 2, 8);
                    }else if(cuadro5 == cuadro4 && cuadro5 == cuadro6){
                        alert("Ganador----->"+ cuadro5)
                        pintar(4, 5, 6);
                    }else if(cuadro5 == cuadro1 && cuadro5 == cuadro9){
                        alert("Ganador----->"+ cuadro5)
                        pintar(1, 5, 9);
                    }else if(cuadro5 == cuadro3 && cuadro5 == cuadro7){
                        alert("Ganador----->"+ cuadro5)
                        pintar(3, 5, 7);
                    }
                    break;
    
                    case 6:
                        if(cuadro6 == cuadro5 && cuadro6 == cuadro4){
                            alert("Ganador----->"+ cuadro6)
                            pintar(4, 5, 6);
                        }else if(cuadro6 == cuadro3 && cuadro6 == cuadro9){
                            alert("Ganador----->"+ cuadro6)
                            pintar(3, 6, 9);
                        }
                        break;
    
                        case 7:
                        if(cuadro7 == cuadro4 && cuadro7 == cuadro1){
                            alert("Ganador----->"+ cuadro7)
                            pintar(1, 4, 7);
                        }else if(cuadro7 == cuadro5 && cuadro7 == cuadro3){
                            alert("Ganador----->"+ cuadro7)
                            pintar(7, 5, 3);
                        }else if(cuadro7 == cuadro8 && cuadro7 == cuadro9){
                            alert("Ganador----->"+ cuadro7)
                            pintar(7, 8, 9);
                        }
                        break;
    
                        case 8:
                        if(cuadro8 == cuadro5 && cuadro8 == cuadro2){
                            alert("Ganador----->"+ cuadro8)
                            pintar(8, 5, 2);
                        }else if(cuadro8 == cuadro7 && cuadro8 == cuadro9){
                            alert("Ganador----->"+ cuadro8)
                            pintar(7, 8, 9);
                        }
                        break;
                        
                           
                        case 9:
                            if(cuadro9 == cuadro5 && cuadro9 == cuadro1){
                                alert("Ganador----->"+ cuadro9)
                                pintar(9, 5, 1);
                            }else if(cuadro9 == cuadro8 && cuadro9 == cuadro7){
                                alert("Ganador----->"+ cuadro9)
                                pintar(9, 8, 7);
                            }else if(cuadro9 == cuadro6 && cuadro9 == cuadro3){
                                alert("Ganador----->"+ cuadro9)
                                pintar(9, 6, 3);
                            }
                            break;
                         }
     }
    }
    
    function pintar(p1, p2, p3){
      document.getElementById("cuadro"+p1).style.backgroundColor = "#aac3f9";
      document.getElementById("cuadro"+p2).style.backgroundColor = "#aac3f9";
      document.getElementById("cuadro"+p3).style.backgroundColor = "#aac3f9";
    }
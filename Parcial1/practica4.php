<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];
    $nombre = $_POST["nombre"];
    $grupo = $_POST["grupo"];

    echo "<div style='padding: 20px; border: 1px solid red;'>";
    echo "<h2>Alumno: ".$nombre. "</h2>";
    echo "<h2>Grupo: ".$grupo. "</h2>"; 


    //Valido pregunta 1 ¿Primera pelicula del UCM?.
    echo "<h3> ¿Primera pelicula del UCM? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Iron Man</h5>";
    if($pregunta1 == "Iron-man"){
        $aciertos++;
        echo "<img src='deadpool-dance.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

    //Valido pregunta 2 es el hermano de Thor.
    echo "<h3> es el hermano de Thor </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Loki</h5>";
    if(strtoupper($pregunta2) == "Loki"){
        $aciertos++;
    }

    if($pregunta2 == "Loki"){
        $aciertos++;
        echo "<img src='deadpool-dance.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

// Pregunta 3 - ¿Son villanos de los vengadores? (Selecciona 2)
echo "<h3> ¿Son villanos de los vengadores? (Selecciona 2) </h3>";
echo "<h5> Respuesta seleccionada: " . implode(" y ", $pregunta3) . " ---- Correctas: Ultron y Thanos</h5>";

if (count($pregunta3) == 2) {
    $p3_respuestas_correctas = 0;

    for ($i = 0; $i < count($pregunta3); $i++) {
        if ($pregunta3[$i] == "Ultron" || $pregunta3[$i] == "Thanos") {
            $p3_respuestas_correctas++;
        }
    }

    if ($p3_respuestas_correctas == 2) {
        $aciertos++;
        echo "<img src='deadpool-dance.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }
} else {
    echo "<img src='tobby.gif' width='50px'><hr>";
}



    //Valido pregunta 4 ¿Cual gema del infinito tiene el teseracto?.
    echo "<h3> ¿Cual gema del infinito tiene el teseracto? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Espacio</h5>";
    if($pregunta4 == "Espacio"){
        $aciertos++;
        echo "<img src='deadpool-dance.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

    //Valido pregunta 5 quedo 70 años congelado.
    echo "<h3> quedo 70 años congelado </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Capitan America</h5>";
    if(strtoupper($pregunta5) == "Capitan America"){
        $aciertos++;
    }

    if($pregunta5 == "Capitan America"){
        $aciertos++;
        echo "<img src='deadpool-dance.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

// Pregunta 6 ¿Cual de estos personajes es un rey? (2 Respuestas)
echo "<h3> ¿Cual de estos personajes es un rey? (Selecciona 2) </h3>";
echo "<h5> Respuesta seleccionada: " . implode(" y ", $pregunta6) . " ---- Correctas: Pantera Negra y Thor</h5>";

if (count($pregunta6) == 2) {
    $p6_respuestas_correctas = 0;
    
    for ($i = 0; $i < count($pregunta6); $i++) {
        if ($pregunta6[$i] == "Pantera-Negra" || $pregunta6[$i] == "Thor") {
            $p6_respuestas_correctas++;
        }
    }
    
    if ($p6_respuestas_correctas == 2) {
        $aciertos++;
        echo "<img src='deadpool-dance1.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }
} else {
    echo "<img src='tobby.gif' width='50px'><hr>";
}


    
       //Valido pregunta 7 ¿En que planeta nació thanos?.
    echo "<h3> ¿En que planeta nació thanos? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Titan</h5>";
    if($pregunta7 == "Titan"){
        $aciertos++;
        echo "<img src='deadpool-dance1.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

     // Pregunta 8 ¿Cual de estos personajes es un Guardian de la Galaxia? (2 Respuestas)
echo "<h3> ¿Cual de estos personajes es un Guardian de la Galaxia? (2 Respuestas) </h3>";
echo "<h5> Respuesta seleccionada: " . implode(" y ", $pregunta8) . " ---- Correctas: Groot y Gamora</h5>";

if (count($pregunta8) == 2) {
    $p8_respuestas_correctas = 0;
    
    for ($i = 0; $i < count($pregunta8); $i++) {
        if ($pregunta8[$i] == "Groot" || $pregunta8[$i] == "Gamora") {
            $p8_respuestas_correctas++;
        }
    }
    
    if ($p8_respuestas_correctas == 2) {
        $aciertos++;
        echo "<img src='deadpool-dance1.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }
} else {
    echo "<img src='tobby.gif' width='50px'><hr>";
}


      //Valido pregunta 9 es el verdadero nombre de la Pantera Negra.
      echo "<h3> es el verdadero nombre de la Pantera Negra </h3>";
      echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = T'Challa</h5>";
      if(strtoupper($pregunta9) == "T'Challa"){
          $aciertos++;
      }

      if($pregunta9 == "T'Challa"){
        $aciertos++;
        echo "<img src='deadpool-dance1.gif' width='50px'><hr>";
    } else {
        echo "<img src='tobby.gif' width='50px'><hr>";
    }

     //Valido pregunta 10 ¿Cómo se llama el martillo de Thor?.
     echo "<h3> ¿Cómo se llama el martillo de Thor? </h3>";
     echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = Mjolnir</h5>";
     if($pregunta10 == "Mjolnir"){
         $aciertos++;
         echo "<img src='deadpool-dance1.gif' width='50px'><hr>";
     } else {
         echo "<img src='tobby.gif' width='50px'><hr>";
     }

     $calificacion = $aciertos * 10;

     if ($calificacion <= 5) {
        echo "<span style='color: red;'>CALIFICACIÓN FINAL = " . $calificacion . "%</span>";
    } elseif ($calificacion >= 7) {
        echo "<span style='color: green;'>CALIFICACIÓN FINAL = " . $calificacion . "%</span>";
    } else {
        echo "CALIFICACIÓN FINAL = " . $calificacion . "%"; 
         }
        
     
    ?> 
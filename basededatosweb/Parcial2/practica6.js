var ocultar = false;

function muestra_texto() {
    if (!ocultar) {
        document.getElementById("texto").innerHTML = "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Maiores perferendis ratione corporis, nesciunt illo, voluptas ab architecto repudiandae omnis eveniet minus. Est, earum! Nisi quisquam suscipit corrupti in nostrum perferendis!";
        ocultar = true;
        document.getElementById("mostrar").innerHTML = "Mostrar menos";
    } else {
        document.getElementById("texto").innerHTML = "";
        ocultar = false;
        document.getElementById("mostrar").innerHTML = "Mostrar más";
    }
}

function lanzar_dado() {
    var numero = Math.floor(Math.random() * 6) + 1;
    document.getElementById("imagen_dado").innerHTML = "<img src='dado" + numero + ".png' width='100px'>";
}

function sumar() {
    valor = document.getElementById("cantpro").value;
    valor=parseInt(valor);
    valor = valor + 1;
    document.getElementById("cantpro").value = valor;

    var costo=document.getElementById("costotot").innerHTML;
    costo=parseFloat(costo);
    costo = costo + (costo/(valor-1));
    document.getElementById("costotot").innerHTML = costo.toFixed(3);


    var a = document.getElementById("dincom").innerHTML;
    console.log(a);
    console.log(costo);
    if(parseFloat(a)<costo){
        alert("NO TIENES SUFICIENTE DINERO");
        restar();
    }

}

function restar() {
    valor = document.getElementById("cantpro").value;
    valor=parseInt(valor);
    if(valor>1){
        valor = valor - 1;
        document.getElementById("cantpro").value = valor;

    
    var costo = document.getElementById("costotot").innerHTML;
    costo = parseFloat(costo);
    costo = costo - (costo/(valor+1));
    document.getElementById("costotot").innerHTML = costo.toFixed(3);


}
}

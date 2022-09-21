

function verificaSenhas() {
    var senha1 = document.getElementById("senha1").value;
    var senha2 = document.getElementById("senha2").value;
    if (senha1 != senha2) {
        alert("As Senhas não são iguais");
        document.getElementById("enviar").disabled = true;
    } else {
        document.getElementById("enviar").disabled = false;

    }
}
function validarCPF(cpf) {

    //"use strict";
    cpf = cpf.replace(/[^\d]+/g, '');

    if (cpf === '')
        return false;

    // Elimina CPFs invalidos conhecidos
    if (cpf.length !== 11 ||
            cpf === "00000000000" ||
            cpf === "11111111111" ||
            cpf === "22222222222" ||
            cpf === "33333333333" ||
            cpf === "44444444444" ||
            cpf === "55555555555" ||
            cpf === "66666666666" ||
            cpf === "77777777777" ||
            cpf === "88888888888" ||
            cpf === "99999999999")
        return false;

    // Valida 1o digito
    add = 0;
    for (i = 0; i < 9; i ++)
        add += parseInt(cpf.charAt(i)) * (10 - i);
    rev = 11 - (add % 11);
    if (rev === 10 || rev === 11)
        rev = 0;
    if (rev !== parseInt(cpf.charAt(9)))
        return false;

    // Valida 2o digito
    add = 0;
    for (i = 0; i < 10; i ++)
        add += parseInt(cpf.charAt(i)) * (11 - i);
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11)
        rev = 0;
    if (rev != parseInt(cpf.charAt(10)))
        return false;

    return true;

}
function verificaAluno() {
    if (document.getElementById("tipo").value == "aluno") {
        document.getElementById("matricula").style.display = "block";
        document.getElementById("matricula").required = true;

    } else {
        document.getElementById("matricula").style.display = "none";
    }

}


function validaCPF() {
    var erros = 0;
    if (isNaN(parseInt(document.getElementById("cpf").value))) {
        //alert("Apenas números");
        erros++;

    } else {
        if (!validarCPF(document.getElementById("cpf").value)) {
            erros++;

        }


    }
    if (erros != 0) {
        alert("CPF errado!!! ou você não digitou apenas números");
        document.getElementById("enviar").disabled = true;
    } else {
        document.getElementById("enviar").disabled = false;
    }

}
//Validador de data pertencente a Lucas Batista Fialho lucaophp@hotmail.com 
function validaData(){
var erros = 0;
        var data = document.getElementById("data_nascimento").value;
        var newStr = "";
        if (data.charAt(2) != "/"){
erros = erros + 1;
}
if (data.charAt(5) != "/"){
erros = erros + 1;
}
if (data.length != 10){
erros = erros + 1;
} else{
newStr += data.charAt(0);
        newStr += data.charAt(1);
        if (parseInt(newStr) > 31 || parseInt(newStr) < 1 || isNaN(parseInt(newStr))){
erros++;
} else{
newStr = "";
        newStr += data.charAt(3);
        newStr += data.charAt(4);
        if (parseInt(newStr) > 12 || parseInt(newStr) < 1 || isNaN(parseInt(newStr))){
erros++;
}

}
}



if (erros != 0){
alert("Data errada");
        document.getElementById("data_nascimento").value = "";
}
}

        document.getElementById("texto").innerHTML = "Inscrição";
       
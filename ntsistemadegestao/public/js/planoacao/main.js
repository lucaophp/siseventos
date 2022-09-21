$("#salvar").click(function() {
    document.getElementById("idEstrategia").readOnly = false;

});

$("#tipoAcao").change(function() {
    verificaEstrategia();
});
function inativa() {

    var lista = document.getElementsByClassName("intup");

    for (var i = 0; i < lista.length; i++) {
        lista[i].readOnly = true;
    }
    var lista = document.getElementsByTagName('select');

    for (var i = 0; i < lista.length; i++) {
        lista[i].readOnly = true;
    }
    var lista = document.getElementsByTagName('textarea');

    for (var i = 0; i < lista.length; i++) {
        lista[i].readOnly = true;
    }



}

function defaultConf() {
    document.getElementById("idAcao").readOnly = false;
    document.getElementById("idPlanoAcao").readOnly = false;
    document.getElementById("idUsuario").readOnly = false;
    document.getElementById("tipoAcao").readOnly = false;
    document.getElementById("oque").readOnly = false;
    document.getElementById("onde").readOnly = false;
    document.getElementById("como").readOnly = false;
    document.getElementById("quem").readOnly = false;
    document.getElementById("idEstrategia").readOnly = false;
    verificaEstrategia();
    document.getElementById("valorPrevisto").readOnly = false;
    document.getElementById("valorRealizado").readOnly = true;
    atualizarDiferenca();

    document.getElementById("dataInicio").readOnly = false;
    document.getElementById("dataPrevisto").readOnly = false;
    document.getElementById("dataConclusao").readOnly = true;

    document.getElementById("cronograma").readOnly = false;
    document.getElementById("status").readOnly = true;

}

function atualiza(idAcao, idUsuario, idPlanoAcao, criterioAcao, tipoAcao, oque, onde, como, quem, idEstrategia, valorPrevisto, valorRealizado, dataInicio, dataPrevisto, dataConclusao, cronograma, status, nivelAcesso, ehDono, evidencia) {
    defaultConf();
    document.getElementById("excluir").display = "none";
    document.getElementById("criterioAcao").value = criterioAcao;
    document.getElementById("idAcao").value = idAcao;
    document.getElementById("idPlanoAcao").value = idPlanoAcao;
    document.getElementById("idUsuario").value = idUsuario;
    document.getElementById("tipoAcao").value = tipoAcao;
    document.getElementById("oque").value = oque;
    document.getElementById("onde").value = onde;
    document.getElementById("como").value = como;
    document.getElementById("quem").value = quem;
    document.getElementById("idEstrategia").value = idEstrategia;
    verificaEstrategia();
    document.getElementById("valorPrevisto").value = valorPrevisto;
    document.getElementById("valorRealizado").value = valorRealizado;
    atualizarDiferenca();

    document.getElementById("dataInicio").value = dataInicio;
    document.getElementById("dataPrevisto").value = dataPrevisto;
    document.getElementById("dataConclusao").value = dataConclusao;

    document.getElementById("cronograma").innerHTML = cronograma;
    document.getElementById("status").value = status;
    //alert(ehDono);

    if (document.getElementById("status").value == 2 && ((nivelAcesso <= 1) || (ehDono == 1))) {

        document.getElementById("dataInicio").readOnly = false;
        document.getElementById("dataPrevisto").readOnly = false;
        document.getElementById("dataConclusao").readOnly = false;
        document.getElementById("valorRealizado").readOnly = false;
        document.getElementById("idEstrategia").readOnly = false;
        document.getElementById("status").readOnly = false;
        document.getElementById("status").style.background = "green";

    } else if (document.getElementById("status").value == 2 && nivelAcesso > 1) {
        document.getElementById("dataInicio").readOnly = true;
        document.getElementById("dataPrevisto").readOnly = true;
        document.getElementById("dataConclusao").readOnly = true;
        document.getElementById("valorRealizado").readOnly = true;
        document.getElementById("idEstrategia").readOnly = true;
        document.getElementById("status").readOnly = true;
        document.getElementById("status").style.background = "green";

    }
    if (document.getElementById("status").value == 1) {
        var lista = document.getElementsByClassName("intup");

        for (var i = 0; i < lista.length; i++) {
            lista[i].readOnly = true;
        }
        var lista = document.getElementsByTagName('select');

        for (var i = 0; i < lista.length; i++) {
            lista[i].readOnly = true;
        }
        var lista = document.getElementsByTagName('textarea');

        for (var i = 0; i < lista.length; i++) {
            lista[i].readOnly = true;
        }
        document.getElementById("cronograma").readOnly = "true";


        document.getElementById("status").style.background = "red";
        document.getElementById("status").readOnly = false;
    }

    document.getElementById("evidenciaAntiga").value = evidencia;
    tinymce.init({selector: '.editorC'});





}
$("#idEstrategia").click(function() {
    if (document.getElementById("tipoAcao").value == "Estratégica") {

        document.getElementById("idEstrategia").readOnly = true;
        ajax();
    }


});
$("#idEstrategia").blur(function() {
    document.getElementById("idEstrategia").readOnly = false;

});


function verificaEstrategia() {
    if (document.getElementById("tipoAcao").value !== "Estratégica") {

        document.getElementById("idEstrategia").readOnly = false;
        document.getElementById("textoEstrategia").style.display = "none";

    } else {
        document.getElementById("idEstrategia").readOnly = false;
        document.getElementById("textoEstrategia").style.display = "block";
    }
}

function ajax() {

    $.ajax({
        url: "planoacao/encontra_estrategia",
        context: document.body.table

    }).done(function(e) {
        $("#resposta").fadeToggle();
        document.getElementById("resposta").innerHTML = e
    });
}
function atualizarDiferenca() {
    var valorprevisto = document.getElementById("valorPrevisto").value;

    var valorrealizado = document.getElementById("valorRealizado").value;
    valorprevisto = valorprevisto.replace(",", ".");

    valorrealizado = valorrealizado.replace(",", ".");

    valorprevisto = parseFloat(valorprevisto).toFixed(2);
    valorrealizado = parseFloat(valorrealizado).toFixed(2);

    if (!isNaN(valorrealizado - valorprevisto)) {
        document.getElementById("valorPrevisto").value = valorprevisto;
        document.getElementById("valorRealizado").value = valorrealizado;
        document.getElementById("diferenca").value = (valorrealizado - valorprevisto).toFixed(2);
    }
}


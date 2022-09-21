$(document).ready(function() {
        $('#users').dataTable({
            "language": {"url": "public/js/jquery.dataTables.pt-BR.js"},
            "pageLength": 50
        });
    });
    $(".nota1,.nota2").change(function(){
      if(!(this.value>=0&&this.value<=10)){
        alert("Nota fora do intervalo de 0 a 10!!!");
        this.value=0;
      }
      if(!(this.value>=0&&this.value<=10)){
        alert("Nota fora do intervalo de 0 a 10!!!");
        this.value=0;
      }
    });
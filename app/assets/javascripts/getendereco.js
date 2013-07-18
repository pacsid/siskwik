function getEndereco() {
    if ($.trim($("#user_cep").val()) != "") {
      $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep="+$("#user_cep").val(), function(){
      <!-- Atribuindo os valores para os componentes da página-->
    if(resultadoCEP["resultado"]){
        $("#user_logradouro").val(unescape(resultadoCEP["tipo_logradouro"]));
        $("#user_logradouro").val(unescape(resultadoCEP["logradouro"]));
        $("#user_bairro").val(unescape(resultadoCEP["bairro"]));
        $("#user_cidade").val(unescape(resultadoCEP["cidade"]));
        $("#user_uf").val(unescape(resultadoCEP["uf"]));
        } else {
          alert("Cep não encontrado.");
       }
       $("#lbcep").html(" CEP")});
    }
    else {
        alert("Informe um cep.");
    }
}
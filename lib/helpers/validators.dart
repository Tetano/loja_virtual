bool emailValid(String email){
  final RegExp regex = RegExp(
      r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$");
  return regex.hasMatch(email);
}
bool senhaValid(String senha){
  if(senha.isEmpty||senha.length<6){
    return false;
  }
  else return true;
}

bool senhasIguais(String senha, String confirmaSenha){
  if(senha == confirmaSenha){
    return true;
  }
  else return false;
}
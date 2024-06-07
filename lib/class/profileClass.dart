

class Profilo {

  late String idProfilo;
  late String profilePicture;
  late String profileBio;
  late String nome;
  late String cognome;
  late String indirizzo;
  late String password;
  late String email;

  Profilo(String idProfilo, String nome, String cognome, String indirizzo, String password, String email, String profilePicture, String profileBio){
    this.idProfilo = idProfilo;
    this.nome = nome;
    this.cognome = cognome;
    this.indirizzo = indirizzo;
    this.password = password;
    this.email = email;
    this.profilePicture = profilePicture;
    this.profileBio = profileBio;
  }


}
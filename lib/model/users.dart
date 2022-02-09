class Users {
  int? id;
  String? nome;
  String? nick;
  String? email;
  String? senha;
  bool? confirmation;

  Users(
      {this.id,
        this.nome,
        this.nick,
        this.email,
        this.senha,
        this.confirmation});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    nick = json['nick'];
    email = json['email'];
    senha = json['senha'];
    confirmation = json['confirmation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['nick'] = this.nick;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['confirmation'] = this.confirmation;
    return data;
  }
}
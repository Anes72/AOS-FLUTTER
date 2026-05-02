class NotifModel {
  int id;
  String nom;
  String prenom;
  String sexe;
  List<String> hobbies;
  String message;

  NotifModel({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.sexe,
    required this.hobbies,
    required this.message,
  });

  factory NotifModel.fromJson(Map<String, dynamic> json) {
    return NotifModel(
      id: json['from_user_id'] ?? 0,
      nom: json['nom'] ?? '',
      prenom: json['prenom'] ?? '',
      sexe: json['sexe'] ?? '',
      hobbies: List<String>.from(json['hobbies'] ?? []),
      message: json['msg'] ?? '',
    );
  }
}

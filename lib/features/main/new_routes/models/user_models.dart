import 'dart:convert';

class UserDetail {
  String name = "";
  String dob = "";
  String gender = "";
  String number = "";
  UserDetail({
    this.name = "",
    this.dob = "",
    this.gender = "",
    this.number = "",
  });

  UserDetail copyWith({
    String? name,
    String? dob,
    String? gender,
    String? number,
  }) {
    return UserDetail(
      name: name ?? this.name,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dob': dob,
      'gender': gender,
      'number': number,
    };
  }

  factory UserDetail.fromMap(Map<String, dynamic> map) {
    return UserDetail(
      name: map['name'] as String,
      dob: map['dob'] as String,
      gender: map['gender'] as String,
      number: map['number'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetail.fromJson(String source) => UserDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserDetail(name: $name, dob: $dob, gender: $gender, number: $number)';
  }

  @override
  bool operator ==(covariant UserDetail other) {
    if (identical(this, other)) return true;

    return other.name == name && other.dob == dob && other.gender == gender && other.number == number;
  }

  @override
  int get hashCode {
    return name.hashCode ^ dob.hashCode ^ gender.hashCode ^ number.hashCode;
  }
}

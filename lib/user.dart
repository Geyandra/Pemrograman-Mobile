class Data{
  String Email;
  String Fullname;
  String ID;
  int PhoneNumber;

  Data({
    this.ID = '',
    required this.Email,
    required this.Fullname, 
    required this.PhoneNumber,
    });

  Map <String, dynamic> toJson() => {
      "ID" : ID,
      "Email" : Email,
      "Fullname" :Fullname,
      "PhoneNumber" :PhoneNumber,
  };

   static Data fromJson(Map <dynamic, dynamic> json) => Data (
    ID: json['ID'],
    Email: json['Email'],
    Fullname: json['Fullname'],
    PhoneNumber: json['PhoneNumber'],
  );

}
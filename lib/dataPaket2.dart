class Data{
  String Berat;
  String NamaBarang;
  String ID;
  String Ukuran;

  Data({
    this.ID = '',
    required this.Berat,
    required this.NamaBarang, 
    required this.Ukuran,
    });

  Map <String, dynamic> toJson() => {
      "ID" : ID,
      "Berat" : Berat,
      "NamaBarang" :NamaBarang,
      "Ukuran" :Ukuran,
  };

   static Data fromJson(Map <dynamic, dynamic> json) => Data (
    ID: json['ID'],
    Berat: json['Berat'],
    NamaBarang: json['NamaBarang'],
    Ukuran: json['Ukuran'],
  );

}
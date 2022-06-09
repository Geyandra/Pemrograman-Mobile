class Data {
  String NamaPengirim;
  String Penjemputan;
  String NamaPenerima;
  String Tujuan;
  int NomerHP;
  String JenisBarang;
  String ID;

  Data(
      {this.ID = '',
      required this.NamaPengirim,
      required this.Penjemputan,
      required this.NamaPenerima,
      required this.Tujuan,
      required this.NomerHP,
      required this.JenisBarang});

  Map<String, dynamic> toJson() => {
        "ID": ID,
        "NamaPengirim": NamaPengirim,
        "Penjemputan": Penjemputan,
        "NamaPenerima": NamaPenerima,
        "Tujuan": Tujuan,
        "NomerHP": NomerHP,
        "JenisBarang": JenisBarang
      };

  static Data fromJson(Map<dynamic, dynamic> json) => Data(
      ID: json['ID'],
      NamaPengirim: json['NamaPengirim'],
      Penjemputan: json['Penjemputan'],
      NamaPenerima: json['NamaPenerima'],
      Tujuan: json['Tujuan'],
      NomerHP: json['NomerHP'],
      JenisBarang: json["JenisBarang"]);
}

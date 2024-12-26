class ChargeModel {
  double electric; // หน่วยไฟฟ้าที่ใช้
  double battery; // เปอร์เซ็นต์แบตเตอรี่
  String station; // สถานีชาร์จ
  String charger; // ประเภทหัวชาร์จ
  String charget; // ระยะเวลาชาร์จ

  ChargeModel({
    required this.electric,
    required this.battery,
    required this.station,
    required this.charger,
    required this.charget,
  });

  // เปลี่ยนข้อมูลเป็น JSON เพื่อส่งไปยัง Backend ในอนาคต
  Map<String, dynamic> toJson() {
    return {
      'electric': electric,
      'battery': battery,
      'station': station,
      'charger': charger,
      'charget': charget,
    };
  }

  // รับข้อมูลจาก JSON หากต้องการในอนาคต
  factory ChargeModel.fromJson(Map<String, dynamic> json) {
    return ChargeModel(
      electric: json['electric'],
      battery: json['battery'],
      station: json['station'],
      charger: json['charger'],
      charget: json['charget'],
    );
  }
}

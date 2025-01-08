class ElectricCarManager {
  // รายการยี่ห้อรถยนต์ไฟฟ้าทั้งหมด
  static const List<String> brands = [
    'Tesla',
    'BYD',
    'Nissan',
    'Hyundai',
    'BMW',
    'Mercedes-Benz',
    'Audi',
    'Porsche',
    'MG',
    'Volvo',
    'KIA',
  ];

  // ข้อมูลรุ่นรถยนต์ไฟฟ้า แยกตามยี่ห้อ
  static const Map<String, List<String>> models = {
    'Tesla': [
      'Model S',
      'Model 3',
      'Model X',
      'Model Y',
      'Cybertruck',
    ],
    'BYD': [
      'BYD Atto 3',
      'BYD Seal',
      'BYD Dolphin',
    ],
    'Nissan': [
      'Nissan Leaf',
      'Nissan Ariya',
    ],
    'Hyundai': [
      'Hyundai Ioniq 5',
      'Hyundai Kona Electric',
      'Hyundai Ioniq 6',
    ],
    'BMW': [
      'BMW i3',
      'BMW i4',
      'BMW iX',
      'BMW i7',
    ],
    'Mercedes-Benz': [
      'Mercedes-Benz EQC',
      'Mercedes-Benz EQA',
      'Mercedes-Benz EQS',
      'Mercedes-Benz EQB',
    ],
    'Audi': [
      'Audi e-tron',
      'Audi Q4 e-tron',
      'Audi e-tron GT',
    ],
    'Porsche': [
      'Porsche Taycan',
      'Porsche Taycan Cross Turismo',
    ],
    'MG': [
      'MG ZS EV',
      'MG4 Electric',
      'MG Marvel R',
    ],
    'Volvo': [
      'Volvo XC40 Recharge',
      'Volvo C40 Recharge',
    ],
    'KIA': [
      'KIA EV6',
      'KIA Soul EV',
      'KIA Niro EV',
    ],
  };

  // ตัวแปรสำหรับเก็บยี่ห้อรถที่เลือก
  String? selectedBrand;

  // ตัวแปรสำหรับเก็บรุ่นรถที่เลือก
  String? selectedModel;

  // Constructor
  ElectricCarManager({this.selectedBrand, this.selectedModel});

  // ฟังก์ชันสำหรับดึงรุ่นรถตามยี่ห้อ
  List<String> getModels(String brand) {
    return models[brand] ?? [];
  }
}

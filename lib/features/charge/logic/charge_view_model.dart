import '../data/charge_model.dart';
class ChargeViewModel {
  late ChargeModel chargeData;

  // ฟังก์ชันสำหรับเก็บข้อมูล
  void saveChargeData({
    required double electric,
    required double battery,
    required String station,
    required String charger,
    required String charget,
  }) {
    chargeData = ChargeModel(
      electric: electric,
      battery: battery,
      station: station,
      charger: charger,
      charget: charget,
    );

    print("Charge Data Saved: ${chargeData.toJson()}");
  }

  // ดึงข้อมูลที่เก็บไว้ (ถ้าจำเป็น)
  ChargeModel getChargeData() {
    return chargeData;
  }
  double calculateElectricity(double batteryPercentage) {
    return batteryPercentage * 2;
  }
}

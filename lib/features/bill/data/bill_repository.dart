class BillRepository {
  // ข้อมูลจำลอง (Mock Data)
  final String _dateNow = "24/12/2024"; // วันที่ปัจจุบัน
  final double _price = 120.75; // ราคารวม

  // ฟังก์ชันสำหรับดึงข้อมูลวันที่ปัจจุบัน
  String getCurrentDate() {
    return _dateNow;
  }

  // ฟังก์ชันสำหรับดึงข้อมูลราคาการชาร์จ
  double getPrice() {
    return _price;
  }

  // ฟังก์ชันสำหรับบันทึกข้อมูลบิล (อาจส่งไปยัง Backend หรือฐานข้อมูล)
  Future<void> saveBill(Map<String, dynamic> billData) async {
    // จำลองการส่งข้อมูลไปยัง Backend
    await Future.delayed(const Duration(seconds: 2)); // รอ 2 วินาที
    print("บันทึกบิลสำเร็จ: $billData");
  }
}

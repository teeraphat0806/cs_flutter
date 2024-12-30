
class ProfileRepository {
  final String imageCar;       // URL or path for car image
  final String email;     
  final String name;     // Email address
  final String subscribeNumber; // Subscription number
  final String birthDate;      // Birth date
  final String identityCard;   // Identity card number
  final String phone;          // Phone number
  final String address;        // Address
  final String car;            // Car make/model
  final String plate;          // License plate
  final total_data = 9;
  // Constructor
  ProfileRepository({
    required this.imageCar,
    required this.email,
    required this.name,
    required this.subscribeNumber,
    required this.birthDate,
    required this.identityCard,
    required this.phone,
    required this.address,
    required this.car,
    required this.plate,
  });

  // Factory method for mock data
  factory ProfileRepository.mock() {
    return ProfileRepository(
      imageCar: 'assets/images/atto3.png',
      name: 'Teeraphat Jirapasnitilert',
      email: "tforactivity@gmail.com",
      subscribeNumber: "V2371589460",
      birthDate: "2004-06-08",
      identityCard: "110301384158",
      phone: "0863825928",
      address: "123 Mock Street, Mock City",
      car: "BYD :ATTO 3",
      plate: "4ขฒ7855",
    );
  }
  Object get_mockdata(){
    return {
      
      'อีเมล':email,
      'ชื่อนามสกุล':name,
      'หมายเลขสมาชิก':subscribeNumber,
      'วันเกิด':birthDate,
      'เลขประจำตัวประชาชน':identityCard,
      'เบอร์โทรศัพท์':phone,
      'ที่อยู่':address,
      'รถของคุณ':car,
      'เลขทะเบียนรถ':plate
    };
  }
  @override
  String toString() {
    return '''
Profile:
  Image Car: $imageCar
  Email: $email
  Subscription Number: $subscribeNumber
  Birth Date: $birthDate
  Identity Card: $identityCard
  Phone: $phone
  Address: $address
  Car: $car
  Plate: $plate
''';
  }
}

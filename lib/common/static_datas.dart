// Bu yerda qulda statik malumotlar turadi

class User{
  final String? userName;
  final String? id;
  final DateTime? time;
  const User({required this.id,required this.time,required this.userName});
}

class PaymentHistory{
  final String? title;
  final String? id;
  final DateTime? time;
  const PaymentHistory({required this.id,required this.time,required this.title});
}
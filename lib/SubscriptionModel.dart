class Subscription {
  final String vehicleNumber;
  final String fuelType;
  final int planDuration;
  final int dailyLimit;
  final String price;
  final DateTime createdAt;

  Subscription({
    required this.vehicleNumber,
    required this.fuelType,
    required this.planDuration,
    required this.dailyLimit,
    required this.price,
    required this.createdAt,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      vehicleNumber: json['vehicle_number'],
      fuelType: json['fuel_type'],
      planDuration: json['plan_duration'],
      dailyLimit: json['daily_limit'],
      price: json['price'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}

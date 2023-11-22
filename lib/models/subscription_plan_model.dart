class SubscriptionPlan {
  final int id;
  final String plan;

  SubscriptionPlan({
    required this.id,
    required this.plan,
  });

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlan(
        id: json['id'] as int, plan: json['plan'] as String);
  }
}
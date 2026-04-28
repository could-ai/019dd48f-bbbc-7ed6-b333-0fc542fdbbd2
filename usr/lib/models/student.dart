class Student {
  final String id;
  final String name;
  final String email;
  final double progress; // 0.0 to 1.0

  Student({
    required this.id,
    required this.name,
    required this.email,
    this.progress = 0.0,
  });
}

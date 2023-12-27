class Event {
  final DateTime startDate;
  final DateTime endDate;
  final String name;

  Event(this.startDate, this.endDate, this.name);

  @override
  String toString() {
    return name;
  }
}

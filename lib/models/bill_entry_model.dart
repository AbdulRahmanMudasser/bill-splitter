class BillEntry {
  final double totalBill;
  final double tipPercentage;
  final int numberOfPerson;
  final double tipAmountPerPerson;
  final double totalAmountPerPerson;
  final String currentCurrency;
  final String entryDate;
  final String entryTime;

  BillEntry({
    required this.totalBill,
    required this.tipPercentage,
    required this.numberOfPerson,
    required this.tipAmountPerPerson,
    required this.totalAmountPerPerson,
    required this.currentCurrency,
    required this.entryDate,
    required this.entryTime,
  });
}

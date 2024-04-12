import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tip_calculator/models/bill_entry_model.dart';

class HomePageController extends GetxController {
  // input variables
  final totalBill = 0.0.obs;
  final tipPercentage = 5.0.obs;
  final numberOfPerson = 1.obs;

  // current currency
  final RxString currentCurrency = "Dollar".obs;

  // list to store bill summary
  final RxList<BillEntry> billEntry = <BillEntry>[].obs;

  // text editing controllers
  final billController = TextEditingController();
  final customTipController = TextEditingController();
  final numberOfPersonController = TextEditingController();

  // getter to calculate tip amount
  double get tipAmount => (totalBill.value * tipPercentage.value) / 100;

  // getter to calculate tip amount per person
  double get tipAmountPerPerson => (tipAmount / numberOfPerson.value).toPrecision(2);

  // getter to calculate the total amount
  double get totalAmount => totalBill.value + tipAmount;

  // getter to calculate the total amount per person
  double get totalAmountPerPerson => (totalAmount / numberOfPerson.value).toPrecision(2);

  // method to update total bill
  void updateTotalBill(value) {
    totalBill.value = value;
  }

  // method to update tip percentage
  void updateTipPercentage(value) {
    tipPercentage.value = value;
  }

  // method to update number of persons
  void updateNumberOfPerson(value) {
    numberOfPerson.value = value;
  }

  // method to changes the currency
  void updateCurrentCurrency(value) {
    currentCurrency.value = value;
    debugPrint(currentCurrency.value);
  }

  // getter to get the symbol according to the current currency
  String get whatIsTheCurrencySymbol {
    switch (currentCurrency.value) {
      case "Pakistani Rupee":
        return "PKR";
      case "Indian Rupee":
        return "INR";
      default:
        return "\$";
    }
  }

  // method to handle exceptions caught by text field on change
  void handleTextFieldChange({
    required String value,
    required void Function(dynamic) updateFunction,
    required bool isDouble,
    required dynamic exceptionValue,
  }) {
    try {
      if (isDouble) {
        updateFunction(double.parse(value));
      } else {
        updateFunction(int.parse(value));
      }
    } catch (exception) {
      updateFunction(exceptionValue);
    }
  }

  // method to generate a bill summary
  void generateBillSummary() {
    final DateTime now = DateTime.now();

    BillEntry entry = BillEntry(
      totalBill: totalBill.value,
      tipPercentage: tipPercentage.value,
      numberOfPerson: numberOfPerson.value,
      tipAmountPerPerson: tipAmountPerPerson,
      totalAmountPerPerson: totalAmountPerPerson,
      currentCurrency: whatIsTheCurrencySymbol,
      entryDate: DateFormat('yyyy:MM:dd').format(now),
      entryTime: DateFormat('HH:mm a').format(now),
    );

    billEntry.add(entry);
  }

  // method to format date
  // String formatDate(DateTime now) {
  //   return DateFormat('yyyy-MM-dd').format(now);
  // }

  // method to format time
  // String formatTime(DateTime now) {
  //   return DateFormat('HH:mm a').format(now);
  // }

  // method to clear bill history
  void clearBillHistory() {
    billEntry.clear();
  }

  // remove a specific index
  void removeBillEntry(int index) {
    billEntry.removeAt(index);
  }

  // method to reset the all input in text fields & variables
  void resetInput() {
    billController.clear();
    customTipController.clear();
    numberOfPersonController.clear();

    currentCurrency.value = "Dollar";

    totalBill.value = 0.0;
    tipPercentage.value = 5.0;
  }
}

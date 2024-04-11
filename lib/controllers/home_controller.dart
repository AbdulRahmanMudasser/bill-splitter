import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  // input variables
  RxDouble totalBill = 0.0.obs;
  RxDouble tipPercentage = 5.0.obs;
  RxInt numberOfPerson = 1.obs;

  // current currency
  RxString currentCurrency = "Dollar".obs;

  // text editing controllers
  TextEditingController billController = TextEditingController();
  TextEditingController customTipController = TextEditingController();
  TextEditingController numberOfPersonController = TextEditingController();

  // getter to calculate tip amount
  double get tipAmount => (totalBill.value * tipPercentage.value) / 100;

  // getter to calculate tip amount per person
  double get tipAmountPerPerson => (tipAmount / numberOfPerson.value).toPrecision(2);

  // getter to calculate the total amount
  double get totalAmount => totalBill.value + tipAmount;

  // getter to calculate the total amount per person
  double get totalAmountPerPerson => (totalAmount / numberOfPerson.value).toPrecision(2);

  // method to update total bill
  updateTotalBill(value) {
    totalBill.value = value;
  }

  // method to update tip percentage
  updateTipPercentage(value) {
    tipPercentage.value = value;
  }

  // method to update number of persons
  updateNumberOfPerson(value) {
    numberOfPerson.value = value;
  }

  // method to changes the currency
  updateCurrentCurrency(value) {
    currentCurrency.value = value;
    debugPrint(currentCurrency.value);
  }

  // getter to get the symbol according to the current currency
  String get whatIsTheCurrencySymbol {
    if (currentCurrency.value == "Dollar") {
      return "\$";
    } else if (currentCurrency.value == "Pakistani Rupee") {
      return "PKR";
    } else {
      return "INR";
    }
  }

  // method to handle exceptions caught by text field on change
  void handleTextFieldChange({
    required String value,
    required Function(dynamic) updateFunction,
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

  // method to reset the all input in text fields & variables
  resetInput() {
    billController.clear();
    customTipController.clear();
    numberOfPersonController.clear();

    currentCurrency.value = "Dollar";

    totalBill.value = 0.0;
    tipPercentage.value = 5.0;
  }
}

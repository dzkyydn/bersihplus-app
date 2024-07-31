import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _userTransactionsLatest;
  dynamic get userTransactionsLatest => _userTransactionsLatest;
  set userTransactionsLatest(dynamic value) {
    _userTransactionsLatest = value;
  }

  dynamic _userTransactionsLongest;
  dynamic get userTransactionsLongest => _userTransactionsLongest;
  set userTransactionsLongest(dynamic value) {
    _userTransactionsLongest = value;
  }

  dynamic _userTransactions;
  dynamic get userTransactions => _userTransactions;
  set userTransactions(dynamic value) {
    _userTransactions = value;
  }

  dynamic _getItem;
  dynamic get getItem => _getItem;
  set getItem(dynamic value) {
    _getItem = value;
  }

  dynamic _userEmailList;
  dynamic get userEmailList => _userEmailList;
  set userEmailList(dynamic value) {
    _userEmailList = value;
  }

  dynamic _userTransfers;
  dynamic get userTransfers => _userTransfers;
  set userTransfers(dynamic value) {
    _userTransfers = value;
  }
}

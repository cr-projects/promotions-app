import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _menuView = prefs.getBool('ff_menuView') ?? _menuView;
    });
    _safeInit(() {
      _activeIcon = prefs.getString('ff_activeIcon') ?? _activeIcon;
    });
    _safeInit(() {
      _compactView = prefs.getBool('ff_compactView') ?? _compactView;
    });
    _safeInit(() {
      _brandId = prefs.getInt('ff_brandId') ?? _brandId;
    });
    _safeInit(() {
      _promotionsEditViewTitle =
          prefs.getString('ff_promotionsEditViewTitle') ??
              _promotionsEditViewTitle;
    });
    _safeInit(() {
      _promotionsReadOnly =
          prefs.getBool('ff_promotionsReadOnly') ?? _promotionsReadOnly;
    });
    _safeInit(() {
      _fiinantialVisibility =
          prefs.getBool('ff_fiinantialVisibility') ?? _fiinantialVisibility;
    });
    _safeInit(() {
      _paymentMediaTypeSel = prefs
              .getStringList('ff_paymentMediaTypeSel')
              ?.map(int.parse)
              .toList() ??
          _paymentMediaTypeSel;
    });
    _safeInit(() {
      _arrNull = prefs.getStringList('ff_arrNull')?.map(int.parse).toList() ??
          _arrNull;
    });
    _safeInit(() {
      _daysLeyend = prefs.getBool('ff_daysLeyend') ?? _daysLeyend;
    });
    _safeInit(() {
      _dataPickerInitBorderColor =
          _colorFromIntValue(prefs.getInt('ff_dataPickerInitBorderColor')) ??
              _dataPickerInitBorderColor;
    });
    _safeInit(() {
      _dataPickerEndBorderColor =
          _colorFromIntValue(prefs.getInt('ff_dataPickerEndBorderColor')) ??
              _dataPickerEndBorderColor;
    });
    _safeInit(() {
      _insertResp = prefs.getBool('ff_insertResp') ?? _insertResp;
    });
    _safeInit(() {
      _PromotionSpinner =
          prefs.getString('ff_PromotionSpinner') ?? _PromotionSpinner;
    });
    _safeInit(() {
      _paymentMediaBoxHeight =
          prefs.getInt('ff_paymentMediaBoxHeight') ?? _paymentMediaBoxHeight;
    });
    _safeInit(() {
      _checkCashSave = prefs.getBool('ff_checkCashSave') ?? _checkCashSave;
    });
    _safeInit(() {
      _checkAppCashSave =
          prefs.getBool('ff_checkAppCashSave') ?? _checkAppCashSave;
    });
    _safeInit(() {
      _checkTDVISABankSave =
          prefs.getBool('ff_checkTDVISABankSave') ?? _checkTDVISABankSave;
    });
    _safeInit(() {
      _checkTDVISAFinancSave =
          prefs.getBool('ff_checkTDVISAFinancSave') ?? _checkTDVISAFinancSave;
    });
    _safeInit(() {
      _checkTDMASTERFinancSave = prefs.getBool('ff_checkTDMASTERFinancSave') ??
          _checkTDMASTERFinancSave;
    });
    _safeInit(() {
      _checkTDMASTERBankSave =
          prefs.getBool('ff_checkTDMASTERBankSave') ?? _checkTDMASTERBankSave;
    });
    _safeInit(() {
      _checkTDAMEXBankSave =
          prefs.getBool('ff_checkTDAMEXBankSave') ?? _checkTDAMEXBankSave;
    });
    _safeInit(() {
      _checkTCVISABankSave =
          prefs.getBool('ff_checkTCVISABankSave') ?? _checkTCVISABankSave;
    });
    _safeInit(() {
      _checkTCVISAFinancSave =
          prefs.getBool('ff_checkTCVISAFinancSave') ?? _checkTCVISAFinancSave;
    });
    _safeInit(() {
      _checkTCMASTERBankSave =
          prefs.getBool('ff_checkTCMASTERBankSave') ?? _checkTCMASTERBankSave;
    });
    _safeInit(() {
      _checkTCMASTERFinancSave = prefs.getBool('ff_checkTCMASTERFinancSave') ??
          _checkTCMASTERFinancSave;
    });
    _safeInit(() {
      _checkTCAMEXBankSave =
          prefs.getBool('ff_checkTCAMEXBankSave') ?? _checkTCAMEXBankSave;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _parameterTypeSet = false;
  bool get parameterTypeSet => _parameterTypeSet;
  set parameterTypeSet(bool value) {
    _parameterTypeSet = value;
  }

  bool _bankReady = false;
  bool get bankReady => _bankReady;
  set bankReady(bool value) {
    _bankReady = value;
  }

  bool _checkDisabled = true;
  bool get checkDisabled => _checkDisabled;
  set checkDisabled(bool value) {
    _checkDisabled = value;
  }

  Color _promoNameColor = Colors.transparent;
  Color get promoNameColor => _promoNameColor;
  set promoNameColor(Color value) {
    _promoNameColor = value;
  }

  Color _brandColor = const Color(0xffe0e3e7);
  Color get brandColor => _brandColor;
  set brandColor(Color value) {
    _brandColor = value;
  }

  Color _paymentTypeBorderColor = Colors.transparent;
  Color get paymentTypeBorderColor => _paymentTypeBorderColor;
  set paymentTypeBorderColor(Color value) {
    _paymentTypeBorderColor = value;
  }

  Color _brandBordercolor = const Color(0xffe0e3e7);
  Color get brandBordercolor => _brandBordercolor;
  set brandBordercolor(Color value) {
    _brandBordercolor = value;
  }

  Color _productBorderColor = const Color(0xffe0e3e7);
  Color get productBorderColor => _productBorderColor;
  set productBorderColor(Color value) {
    _productBorderColor = value;
  }

  Color _discountTypeBorderColor = const Color(0xff57636c);
  Color get discountTypeBorderColor => _discountTypeBorderColor;
  set discountTypeBorderColor(Color value) {
    _discountTypeBorderColor = value;
  }

  Color _frecuenceBorderColor = Colors.transparent;
  Color get frecuenceBorderColor => _frecuenceBorderColor;
  set frecuenceBorderColor(Color value) {
    _frecuenceBorderColor = value;
  }

  Color _daysBorderColor = Colors.transparent;
  Color get daysBorderColor => _daysBorderColor;
  set daysBorderColor(Color value) {
    _daysBorderColor = value;
  }

  Color _paymentMethodBorderColor = Colors.transparent;
  Color get paymentMethodBorderColor => _paymentMethodBorderColor;
  set paymentMethodBorderColor(Color value) {
    _paymentMethodBorderColor = value;
  }

  bool _brandSet = false;
  bool get brandSet => _brandSet;
  set brandSet(bool value) {
    _brandSet = value;
  }

  bool _addProductForm = false;
  bool get addProductForm => _addProductForm;
  set addProductForm(bool value) {
    _addProductForm = value;
  }

  bool _daysComponentAllow = false;
  bool get daysComponentAllow => _daysComponentAllow;
  set daysComponentAllow(bool value) {
    _daysComponentAllow = value;
  }

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    prefs.setBool('ff_darkMode', value);
  }

  bool _menuView = false;
  bool get menuView => _menuView;
  set menuView(bool value) {
    _menuView = value;
    prefs.setBool('ff_menuView', value);
  }

  bool _iconMenuOpened = false;
  bool get iconMenuOpened => _iconMenuOpened;
  set iconMenuOpened(bool value) {
    _iconMenuOpened = value;
  }

  String _activeIcon = '';
  String get activeIcon => _activeIcon;
  set activeIcon(String value) {
    _activeIcon = value;
    prefs.setString('ff_activeIcon', value);
  }

  bool _compactView = false;
  bool get compactView => _compactView;
  set compactView(bool value) {
    _compactView = value;
    prefs.setBool('ff_compactView', value);
  }

  int _brandId = 0;
  int get brandId => _brandId;
  set brandId(int value) {
    _brandId = value;
    prefs.setInt('ff_brandId', value);
  }

  String _promotionsEditViewTitle = '';
  String get promotionsEditViewTitle => _promotionsEditViewTitle;
  set promotionsEditViewTitle(String value) {
    _promotionsEditViewTitle = value;
    prefs.setString('ff_promotionsEditViewTitle', value);
  }

  bool _promotionsReadOnly = false;
  bool get promotionsReadOnly => _promotionsReadOnly;
  set promotionsReadOnly(bool value) {
    _promotionsReadOnly = value;
    prefs.setBool('ff_promotionsReadOnly', value);
  }

  bool _fiinantialVisibility = false;
  bool get fiinantialVisibility => _fiinantialVisibility;
  set fiinantialVisibility(bool value) {
    _fiinantialVisibility = value;
    prefs.setBool('ff_fiinantialVisibility', value);
  }

  List<int> _paymentMediaTypeSel = [];
  List<int> get paymentMediaTypeSel => _paymentMediaTypeSel;
  set paymentMediaTypeSel(List<int> value) {
    _paymentMediaTypeSel = value;
    prefs.setStringList(
        'ff_paymentMediaTypeSel', value.map((x) => x.toString()).toList());
  }

  void addToPaymentMediaTypeSel(int value) {
    paymentMediaTypeSel.add(value);
    prefs.setStringList('ff_paymentMediaTypeSel',
        _paymentMediaTypeSel.map((x) => x.toString()).toList());
  }

  void removeFromPaymentMediaTypeSel(int value) {
    paymentMediaTypeSel.remove(value);
    prefs.setStringList('ff_paymentMediaTypeSel',
        _paymentMediaTypeSel.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPaymentMediaTypeSel(int index) {
    paymentMediaTypeSel.removeAt(index);
    prefs.setStringList('ff_paymentMediaTypeSel',
        _paymentMediaTypeSel.map((x) => x.toString()).toList());
  }

  void updatePaymentMediaTypeSelAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    paymentMediaTypeSel[index] = updateFn(_paymentMediaTypeSel[index]);
    prefs.setStringList('ff_paymentMediaTypeSel',
        _paymentMediaTypeSel.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPaymentMediaTypeSel(int index, int value) {
    paymentMediaTypeSel.insert(index, value);
    prefs.setStringList('ff_paymentMediaTypeSel',
        _paymentMediaTypeSel.map((x) => x.toString()).toList());
  }

  String _stringNull = '';
  String get stringNull => _stringNull;
  set stringNull(String value) {
    _stringNull = value;
  }

  List<int> _arrNull = [0];
  List<int> get arrNull => _arrNull;
  set arrNull(List<int> value) {
    _arrNull = value;
    prefs.setStringList('ff_arrNull', value.map((x) => x.toString()).toList());
  }

  void addToArrNull(int value) {
    arrNull.add(value);
    prefs.setStringList(
        'ff_arrNull', _arrNull.map((x) => x.toString()).toList());
  }

  void removeFromArrNull(int value) {
    arrNull.remove(value);
    prefs.setStringList(
        'ff_arrNull', _arrNull.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromArrNull(int index) {
    arrNull.removeAt(index);
    prefs.setStringList(
        'ff_arrNull', _arrNull.map((x) => x.toString()).toList());
  }

  void updateArrNullAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    arrNull[index] = updateFn(_arrNull[index]);
    prefs.setStringList(
        'ff_arrNull', _arrNull.map((x) => x.toString()).toList());
  }

  void insertAtIndexInArrNull(int index, int value) {
    arrNull.insert(index, value);
    prefs.setStringList(
        'ff_arrNull', _arrNull.map((x) => x.toString()).toList());
  }

  bool _daysLeyend = false;
  bool get daysLeyend => _daysLeyend;
  set daysLeyend(bool value) {
    _daysLeyend = value;
    prefs.setBool('ff_daysLeyend', value);
  }

  Color _dataPickerInitBorderColor = const Color(0xffe0e3e7);
  Color get dataPickerInitBorderColor => _dataPickerInitBorderColor;
  set dataPickerInitBorderColor(Color value) {
    _dataPickerInitBorderColor = value;
    prefs.setInt('ff_dataPickerInitBorderColor', value.value);
  }

  Color _dataPickerEndBorderColor = const Color(0xffe0e3e7);
  Color get dataPickerEndBorderColor => _dataPickerEndBorderColor;
  set dataPickerEndBorderColor(Color value) {
    _dataPickerEndBorderColor = value;
    prefs.setInt('ff_dataPickerEndBorderColor', value.value);
  }

  bool _insertResp = false;
  bool get insertResp => _insertResp;
  set insertResp(bool value) {
    _insertResp = value;
    prefs.setBool('ff_insertResp', value);
  }

  String _PromotionSpinner = '';
  String get PromotionSpinner => _PromotionSpinner;
  set PromotionSpinner(String value) {
    _PromotionSpinner = value;
    prefs.setString('ff_PromotionSpinner', value);
  }

  int _paymentMediaBoxHeight = 0;
  int get paymentMediaBoxHeight => _paymentMediaBoxHeight;
  set paymentMediaBoxHeight(int value) {
    _paymentMediaBoxHeight = value;
    prefs.setInt('ff_paymentMediaBoxHeight', value);
  }

  bool _checkCashSave = true;
  bool get checkCashSave => _checkCashSave;
  set checkCashSave(bool value) {
    _checkCashSave = value;
    prefs.setBool('ff_checkCashSave', value);
  }

  bool _checkAppCashSave = true;
  bool get checkAppCashSave => _checkAppCashSave;
  set checkAppCashSave(bool value) {
    _checkAppCashSave = value;
    prefs.setBool('ff_checkAppCashSave', value);
  }

  bool _checkTDVISABankSave = true;
  bool get checkTDVISABankSave => _checkTDVISABankSave;
  set checkTDVISABankSave(bool value) {
    _checkTDVISABankSave = value;
    prefs.setBool('ff_checkTDVISABankSave', value);
  }

  bool _checkTDVISAFinancSave = true;
  bool get checkTDVISAFinancSave => _checkTDVISAFinancSave;
  set checkTDVISAFinancSave(bool value) {
    _checkTDVISAFinancSave = value;
    prefs.setBool('ff_checkTDVISAFinancSave', value);
  }

  bool _checkTDMASTERFinancSave = true;
  bool get checkTDMASTERFinancSave => _checkTDMASTERFinancSave;
  set checkTDMASTERFinancSave(bool value) {
    _checkTDMASTERFinancSave = value;
    prefs.setBool('ff_checkTDMASTERFinancSave', value);
  }

  bool _checkTDMASTERBankSave = true;
  bool get checkTDMASTERBankSave => _checkTDMASTERBankSave;
  set checkTDMASTERBankSave(bool value) {
    _checkTDMASTERBankSave = value;
    prefs.setBool('ff_checkTDMASTERBankSave', value);
  }

  bool _checkTDAMEXBankSave = true;
  bool get checkTDAMEXBankSave => _checkTDAMEXBankSave;
  set checkTDAMEXBankSave(bool value) {
    _checkTDAMEXBankSave = value;
    prefs.setBool('ff_checkTDAMEXBankSave', value);
  }

  bool _checkTCVISABankSave = true;
  bool get checkTCVISABankSave => _checkTCVISABankSave;
  set checkTCVISABankSave(bool value) {
    _checkTCVISABankSave = value;
    prefs.setBool('ff_checkTCVISABankSave', value);
  }

  bool _checkTCVISAFinancSave = true;
  bool get checkTCVISAFinancSave => _checkTCVISAFinancSave;
  set checkTCVISAFinancSave(bool value) {
    _checkTCVISAFinancSave = value;
    prefs.setBool('ff_checkTCVISAFinancSave', value);
  }

  bool _checkTCMASTERBankSave = true;
  bool get checkTCMASTERBankSave => _checkTCMASTERBankSave;
  set checkTCMASTERBankSave(bool value) {
    _checkTCMASTERBankSave = value;
    prefs.setBool('ff_checkTCMASTERBankSave', value);
  }

  bool _checkTCMASTERFinancSave = true;
  bool get checkTCMASTERFinancSave => _checkTCMASTERFinancSave;
  set checkTCMASTERFinancSave(bool value) {
    _checkTCMASTERFinancSave = value;
    prefs.setBool('ff_checkTCMASTERFinancSave', value);
  }

  bool _checkTCAMEXBankSave = true;
  bool get checkTCAMEXBankSave => _checkTCAMEXBankSave;
  set checkTCAMEXBankSave(bool value) {
    _checkTCAMEXBankSave = value;
    prefs.setBool('ff_checkTCAMEXBankSave', value);
  }

  bool _checkCashValue = false;
  bool get checkCashValue => _checkCashValue;
  set checkCashValue(bool value) {
    _checkCashValue = value;
  }

  bool _checkAppCashValue = false;
  bool get checkAppCashValue => _checkAppCashValue;
  set checkAppCashValue(bool value) {
    _checkAppCashValue = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login_register
  {
    'hpqzxzbf': {
      'es': 'promo',
      'en': '',
    },
    'fu971pe8': {
      'es': 'Ingresar ',
      'en': '',
    },
    'jo5wibvs': {
      'es': 'Por favor completar los siguientes datos.',
      'en': '',
    },
    'mjbqw5c4': {
      'es': 'Email',
      'en': '',
    },
    '2ejm7tcg': {
      'es': 'Password',
      'en': '',
    },
    'w4i8evux': {
      'es': 'Ingresar',
      'en': '',
    },
    '1oa34kjc': {
      'es': 'El email es requerido',
      'en': '',
    },
    'm3mfwhdh': {
      'es': 'ingresar un email válido',
      'en': '',
    },
    'mpyyc35t': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '1px6ocoj': {
      'es': 'La contraseña es requerida',
      'en': '',
    },
    'f3p7i0cj': {
      'es': 'Debe ingresar como mínimo 5 caracteres',
      'en': '',
    },
    'kmycbmiu': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '12t6c5nu': {
      'es': '¿Olvidó la contraseña?',
      'en': '',
    },
    'tog9emnz': {
      'es': 'O ingresar con',
      'en': '',
    },
    '13i7nf6k': {
      'es': 'Continuar con Google',
      'en': '',
    },
    'eyxjsdld': {
      'es': 'Continuar con Apple',
      'en': '',
    },
    'npsle5sn': {
      'es': 'Registrarse',
      'en': '',
    },
    'c62c1iz5': {
      'es': 'Por favor completar los siguientes datos.',
      'en': '',
    },
    'rwnv63om': {
      'es': 'Nombre',
      'en': '',
    },
    'ietms596': {
      'es': 'Apellido',
      'en': '',
    },
    '1kscbjdj': {
      'es': 'Email',
      'en': '',
    },
    'a9wmwd5i': {
      'es': 'Dni',
      'en': '',
    },
    'tijknisz': {
      'es': 'Celular',
      'en': '',
    },
    '0vk6t6o4': {
      'es': 'Option 1',
      'en': '',
    },
    'ri3q3hx4': {
      'es': 'Contraseña',
      'en': '',
    },
    'xxvenb9z': {
      'es': 'Confirmar Contraseña',
      'en': '',
    },
    '5k5kpbo0': {
      'es': 'El nombre es requerido',
      'en': '',
    },
    'jv86lqwa': {
      'es': 'Ingresar mínimo 4 caracteres',
      'en': '',
    },
    '7f4jq2zt': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'bvvw0n61': {
      'es': 'El apellido es requerido',
      'en': '',
    },
    'y2dfsuzm': {
      'es': 'Ingresar mínimo 4 caracteres',
      'en': '',
    },
    '6xcn43u1': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'qsmco8om': {
      'es': 'El email es requerido',
      'en': '',
    },
    '6wd2484q': {
      'es': 'Debe ingresar un email válido',
      'en': '',
    },
    '2w4p5iaw': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '09uf98ek': {
      'es': 'Nro de documento requerido',
      'en': '',
    },
    'zrsuj5cm': {
      'es': 'Debe ingresar un dni válido',
      'en': '',
    },
    'it4uky0a': {
      'es': 'No puede superar los 8 dígitos',
      'en': '',
    },
    '3dv3v1o9': {
      'es': 'Ingresar solo números',
      'en': '',
    },
    'wdj6xjgt': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'h8ry42sq': {
      'es': 'El celular es requerido',
      'en': '',
    },
    'pi4odb9p': {
      'es': 'El celular es requerido',
      'en': '',
    },
    'spd54s35': {
      'es': 'El celular es requerido',
      'en': '',
    },
    'mubb6wtz': {
      'es': 'La contraseña es requerida',
      'en': '',
    },
    'd40kmfuo': {
      'es': 'Debe ingresar como mínimo 5 caracteres',
      'en': '',
    },
    '8hoktp4a': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'n10aox3d': {
      'es': 'Ingresar la confirmación',
      'en': '',
    },
    'noltff93': {
      'es': 'Debe ingresar como mínimo 5 caracteres',
      'en': '',
    },
    '4ir2cx9l': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ialhtp52': {
      'es': 'Create Account',
      'en': '',
    },
    'pevigr7k': {
      'es': 'O registrarse con',
      'en': '',
    },
    'yurpoffc': {
      'es': 'Continuar con Google',
      'en': '',
    },
    't4w6a12i': {
      'es': 'Continuar con Apple',
      'en': '',
    },
    'ubttz6ta': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // no_email_validation
  {
    'ecwsm7fw': {
      'es': 'promo',
      'en': '',
    },
    'eavdkrnm': {
      'es': 'Se requiere validar previamente el email registrado',
      'en': 'Email validation is required beforehand',
    },
    'muu1eelp': {
      'es':
          'Por favor abra el email que le hemos enviado y haga click en el link para verificarlo.',
      'en': '',
    },
    'iuynkh2j': {
      'es': 'volver al login',
      'en': 'return to login',
    },
    'v8ymcybh': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // promotionsAdmin
  {
    'e2e1yjuc': {
      'es': 'Texto a buscar',
      'en': '',
    },
    'ig0w7m42': {
      'es': '#',
      'en': '',
    },
    '3dovze40': {
      'es': 'Nombre',
      'en': '',
    },
    'hjsdv3q4': {
      'es': 'Producto',
      'en': '',
    },
    '6b4djg5s': {
      'es': 'Empresa / Marca',
      'en': '',
    },
    'u30qrklh': {
      'es': 'Días',
      'en': '',
    },
    'ellr44es': {
      'es': 'Fecha Inicio',
      'en': '',
    },
    '5kqyd3p4': {
      'es': 'Fecha Fin',
      'en': '',
    },
    'ay60iz3s': {
      'es': 'Acciones',
      'en': '',
    },
    'y8n5dile': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // productsAdmin
  {
    'rl9c9uls': {
      'es': 'Administración de Productos',
      'en': '',
    },
    'zmyk0ctm': {
      'es': '',
      'en': '',
    },
    '0upye4so': {
      'es': 'Nombre',
      'en': '',
    },
    'oy18w8ks': {
      'es': 'Marca/Empresa',
      'en': '',
    },
    '9bge762i': {
      'es': 'Tipo de Producto',
      'en': '',
    },
    '71tjjtsi': {
      'es': 'Fecha de Creación',
      'en': '',
    },
    '4jjnk9jy': {
      'es': 'Acción',
      'en': '',
    },
    'jaet0rro': {
      'es': 'Home',
      'en': '',
    },
  },
  // brandsAdmin
  {
    'zzf4r0yp': {
      'es': 'Administración de Marcas',
      'en': '',
    },
    'a2yi1t67': {
      'es': '#',
      'en': '',
    },
    'ee0k3nkj': {
      'es': 'Marca',
      'en': '',
    },
    '8mr6k2n8': {
      'es': 'Tipo de Empresa',
      'en': '',
    },
    'rde4opvt': {
      'es': 'Activo',
      'en': '',
    },
    'iw71alwb': {
      'es': 'Fecha de Creación',
      'en': '',
    },
    'v30plmpu': {
      'es': 'Acción',
      'en': '',
    },
    'ad3pza9k': {
      'es': '',
      'en': '',
    },
    '542dcqtl': {
      'es': '',
      'en': '',
    },
    'mob65lcj': {
      'es': 'Home',
      'en': '',
    },
  },
  // index
  {
    '5d5fuvlb': {
      'es': 'Búsqueda por Categoría',
      'en': '',
    },
    'hz71kk62': {
      'es': 'Tipo de Categoría de Producto',
      'en': '',
    },
    'bcmj9h7e': {
      'es': '',
      'en': '',
    },
    'lv9xjly9': {
      'es': 'Seleccionar Categoría',
      'en': '',
    },
    '5y2irkqo': {
      'es': 'Novedades',
      'en': '',
    },
    'wo3n4u25': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // promotionSearchResult
  {
    'i3fgpqnk': {
      'es': 'Producto: ',
      'en': '',
    },
    'k9tn67vh': {
      'es': 'Beneficio: ',
      'en': '',
    },
    'ku0z45nm': {
      'es': 'Monto: ',
      'en': '',
    },
    '6l0bx1h4': {
      'es': 'Vigencia: ',
      'en': '',
    },
    'oeo2lfg2': {
      'es': 'Frecuencia: ',
      'en': '',
    },
    'bd6f1by4': {
      'es': 'Comentarios: ',
      'en': '',
    },
    'wtubdvgm': {
      'es': 'Condiciones: ',
      'en': '',
    },
    'ucwfbtb8': {
      'es': 'Medio de Pago: ',
      'en': '',
    },
    'zzr8aweh': {
      'es': 'Banco: ',
      'en': '',
    },
    'o18o3hvu': {
      'es': 'Hello World',
      'en': '',
    },
    '87gscrx0': {
      'es': 'Adicional: ',
      'en': '',
    },
    'rhnbmttu': {
      'es': 'Home',
      'en': '',
    },
  },
  // personalData
  {
    'mgi8wi83': {
      'es': 'Datos Personales',
      'en': '',
    },
    '2pt28qv4': {
      'es': 'Nombre',
      'en': '',
    },
    't89tswhs': {
      'es': 'TextField',
      'en': '',
    },
    '7e7s2vze': {
      'es': 'Apellido',
      'en': '',
    },
    '6iv76ex4': {
      'es': 'TextField',
      'en': '',
    },
    'y6bdkrz9': {
      'es': 'DNI',
      'en': '',
    },
    'l14q3ze7': {
      'es': 'TextField',
      'en': '',
    },
    'ovkanrnr': {
      'es': 'Home',
      'en': '',
    },
  },
  // personalPreferences
  {
    'ci1yuabk': {
      'es': 'Preferencias',
      'en': '',
    },
    'e88k1wm2': {
      'es': 'Nombre',
      'en': '',
    },
    'e9nvn4mc': {
      'es': 'Apellido',
      'en': '',
    },
    'rzxgjej2': {
      'es': 'DNI',
      'en': '',
    },
    'swz14rho': {
      'es': 'Home',
      'en': '',
    },
  },
  // personalPaymentMedia
  {
    '65x4p9b4': {
      'es': 'Efectivo',
      'en': '',
    },
    'f69q7txn': {
      'es': '',
      'en': '',
    },
    'iiiixo28': {
      'es': 'Dinero en Cuenta (Billetera o App)',
      'en': '',
    },
    'qok2hj52': {
      'es': '',
      'en': '',
    },
    'n0663b8d': {
      'es': 'Cuentas Bancarias',
      'en': '',
    },
    'wv7ei514': {
      'es': 'Tarjeta de Débito',
      'en': '',
    },
    'd6rnoz81': {
      'es': 'VISA',
      'en': '',
    },
    '9nwygbg0': {
      'es': 'Banco',
      'en': '',
    },
    'ry01ny8p': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'shikw1em': {
      'es': 'Buscar...',
      'en': '',
    },
    'atsqviza': {
      'es': 'Financiera',
      'en': '',
    },
    'ro7dif5o': {
      'es': 'Option 1',
      'en': '',
    },
    'by95kf9q': {
      'es': 'Option 2',
      'en': '',
    },
    'pm6inxlz': {
      'es': 'Option 3',
      'en': '',
    },
    'dkgg20gv': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'bscyhnfj': {
      'es': 'Buscar...',
      'en': '',
    },
    '5a1xuaxk': {
      'es': 'Tarjeta de Débito',
      'en': '',
    },
    'lvaky9m8': {
      'es': 'MASTERCARD',
      'en': '',
    },
    '5zekwlco': {
      'es': 'Banco',
      'en': '',
    },
    '292alhqk': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    '7vw75kuo': {
      'es': 'Buscar...',
      'en': '',
    },
    'wbmq8kts': {
      'es': 'Financiera',
      'en': '',
    },
    'sk3pfwiq': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'uup573s9': {
      'es': 'Buscar...',
      'en': '',
    },
    'nvnwha5m': {
      'es': 'Tarjeta de Débito',
      'en': '',
    },
    'a9mby4fp': {
      'es': 'AMERICAN EXPRESS',
      'en': '',
    },
    'vhxzr9df': {
      'es': 'Banco',
      'en': '',
    },
    'uc895701': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'xbtdxwj1': {
      'es': 'Buscar...',
      'en': '',
    },
    '979xx7iy': {
      'es': 'Tarjeta de Crédito',
      'en': '',
    },
    'v1ecixpo': {
      'es': 'VISA',
      'en': '',
    },
    'w9je5u2e': {
      'es': 'Banco',
      'en': '',
    },
    '8ii78rpu': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    '0xinrp6x': {
      'es': 'Buscar...',
      'en': '',
    },
    '5fpaijvr': {
      'es': 'Financiera',
      'en': '',
    },
    '65g6m29y': {
      'es': 'Option 1',
      'en': '',
    },
    'xo7w4gig': {
      'es': 'Option 2',
      'en': '',
    },
    '0jgluwgl': {
      'es': 'Option 3',
      'en': '',
    },
    's3329edr': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    '24l96rwo': {
      'es': 'Buscar...',
      'en': '',
    },
    'api7eb2n': {
      'es': 'Tarjeta de Crédito',
      'en': '',
    },
    '3wo95770': {
      'es': 'MASTERCARD',
      'en': '',
    },
    'i287o8rv': {
      'es': 'Banco',
      'en': '',
    },
    '4nzl7otw': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'c9p55d3i': {
      'es': 'Buscar...',
      'en': '',
    },
    'vw55j7vj': {
      'es': 'Financiera',
      'en': '',
    },
    'xtaazv69': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'udldx8s4': {
      'es': 'Buscar...',
      'en': '',
    },
    'lq389arl': {
      'es': 'Tarjeta de Crédito',
      'en': '',
    },
    'hngegq2x': {
      'es': 'AMERICAN EXPRESS',
      'en': '',
    },
    'an0mc1ja': {
      'es': 'Banco',
      'en': '',
    },
    'mg8fpceg': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'd3xy8v8c': {
      'es': 'Buscar...',
      'en': '',
    },
    'kz4ma01o': {
      'es': 'Home',
      'en': '',
    },
  },
  // productAddComponent
  {
    'zgqs8a36': {
      'es': 'Ingresar Nuevo Producto',
      'en': '',
    },
    'iw6izws6': {
      'es': 'Ingresar Nombre de Producto',
      'en': '',
    },
    '75j4cjlp': {
      'es': 'Option 1',
      'en': '',
    },
    'ag46r2s8': {
      'es': 'Seleccionar Marca',
      'en': '',
    },
    'jhhly34n': {
      'es': 'Search for an item...',
      'en': '',
    },
    '19k4i3oo': {
      'es': 'Option 1',
      'en': '',
    },
    'oo5kadj6': {
      'es': 'Seleccionar tipo de producto',
      'en': '',
    },
    'bmt1xypk': {
      'es': 'Seleccionar Tipo de Producto',
      'en': '',
    },
    'ek1alona': {
      'es': 'Nombre Requerido',
      'en': '',
    },
    'q90ae21v': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // productEditComponent
  {
    '7p5g20gs': {
      'es': 'Editar  Producto',
      'en': '',
    },
    's2wuxnnt': {
      'es': 'Ingresar Nombre de Producto',
      'en': '',
    },
    'jbiuh46c': {
      'es': 'Seleccionar Marca',
      'en': '',
    },
    'zffbhvzj': {
      'es': '',
      'en': '',
    },
    '3av6aj6a': {
      'es': 'Seleccionar Tipo de Producto',
      'en': '',
    },
    'o68r5o6r': {
      'es': '',
      'en': '',
    },
    'oyi3488z': {
      'es': 'Nombre de producto requerido',
      'en': '',
    },
    'rsbe9yir': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // promotionEditComponent
  {
    'bqeel1f4': {
      'es': '',
      'en': '',
    },
    '0bodbbmi': {
      'es': 'Link a información de la promo',
      'en': '',
    },
    'gwztidh3': {
      'es': 'Fecha Inicio',
      'en': '',
    },
    'msz3vj3e': {
      'es': '',
      'en': '',
    },
    'vl2fchrb': {
      'es': '',
      'en': '',
    },
    'nlt7rd3d': {
      'es': 'Fecha Fin',
      'en': '',
    },
    'ezocd0bj': {
      'es': '',
      'en': '',
    },
    'u3u1widh': {
      'es': '',
      'en': '',
    },
    'injyi58n': {
      'es': 'Seleccionar la empresa y producto',
      'en': '',
    },
    '2mqu340i': {
      'es': 'Marca',
      'en': '',
    },
    'e0wopkom': {
      'es': 'Seleccionar Producto',
      'en': '',
    },
    'bca5cwp6': {
      'es': '',
      'en': '',
    },
    '0kbmohmr': {
      'es': 'Option 1',
      'en': '',
    },
    '57u412sl': {
      'es': 'Producto',
      'en': '',
    },
    '4iyh3lmr': {
      'es': 'Search for an item...',
      'en': '',
    },
    'fxznx8gf': {
      'es': '',
      'en': '',
    },
    'fv525pdc': {
      'es': 'Configuración de Medio y Forma de Pago',
      'en': '',
    },
    '4aylnc3u': {
      'es': 'Configuración de Descuento',
      'en': '',
    },
    '4xchc1l9': {
      'es': 'Monto',
      'en': '',
    },
    'agqohaa8': {
      'es': 'Monto Tope',
      'en': '',
    },
    'pwuzs6zb': {
      'es': 'Configurar Otros Descuentos Acumulables',
      'en': '',
    },
    '57397w6g': {
      'es': 'Monto acumulable',
      'en': '',
    },
    '6chuxlvk': {
      'es': 'Monto Tope Acumulable',
      'en': '',
    },
    'f06vkvdc': {
      'es': 'Comentarios sobre Descuento Acumulables',
      'en': '',
    },
    'il05yxux': {
      'es': 'Comentario',
      'en': '',
    },
    'ye4vr40l': {
      'es': 'Condiciones',
      'en': '',
    },
    'xw8no77w': {
      'es': 'Nombre de producto requerido',
      'en': '',
    },
    'rh3z6ecq': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // days_component
  {
    'a69pxj03': {
      'es': 'Días',
      'en': '',
    },
    'cgri0p2a': {
      'es': 'Option 1',
      'en': '',
    },
    'm2cvtwnz': {
      'es': '',
      'en': '',
    },
    'xjpzrpbr': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // brandAddComponent
  {
    'uym55lj5': {
      'es': 'Ingresar Nueva Marca',
      'en': '',
    },
    'v3ka9b36': {
      'es': 'Ingresar Nombre de Marca',
      'en': '',
    },
    'rw9rrril': {
      'es': 'Option 1',
      'en': '',
    },
    'j8i18a9h': {
      'es': 'Seleccionar Tipo de Empresa',
      'en': '',
    },
    '9k8teo1r': {
      'es': 'Search for an item...',
      'en': '',
    },
    '1g1khui0': {
      'es': 'Nombre Requerido',
      'en': '',
    },
    'lntngb9q': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // brandEditComponent
  {
    '66wzz1nr': {
      'es': 'Editar  Marca',
      'en': '',
    },
    '6i3p2yil': {
      'es': 'Nombre',
      'en': '',
    },
    'p2y3nfpi': {
      'es': '',
      'en': '',
    },
    'wz2q14ct': {
      'es': 'Tipo de Empresa',
      'en': '',
    },
    '2wzvlqyw': {
      'es': 'Seleccionar Tipo de Empresa',
      'en': '',
    },
    'qh38ull4': {
      'es': '',
      'en': '',
    },
    '2yngllq4': {
      'es': 'Activo',
      'en': '',
    },
    'b5ov52bc': {
      'es': 'Nombre de producto requerido',
      'en': '',
    },
    'm93pfket': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // sideBar
  {
    '1y0l6wcg': {
      'es': 'Cristian',
      'en': '',
    },
    'p7cu8r9i': {
      'es': 'Dev',
      'en': '',
    },
    '9pdujiug': {
      'es': 'Inicio',
      'en': '',
    },
    'q91lq6wy': {
      'es': 'Promociones',
      'en': '',
    },
    '1ss5v83r': {
      'es': 'Marcas',
      'en': '',
    },
    'r38c6l8h': {
      'es': 'Productos',
      'en': '',
    },
    '0hwicypf': {
      'es': 'Usuario',
      'en': '',
    },
    '0wf3kknu': {
      'es': 'Dark Mode',
      'en': '',
    },
    'p91lai5v': {
      'es': 'Logout',
      'en': '',
    },
  },
  // frecuence_component
  {
    'yuijlm4x': {
      'es': 'Frecuencia',
      'en': '',
    },
    'obm9wttc': {
      'es': '',
      'en': '',
    },
    's8dgg989': {
      'es': 'Search...',
      'en': '',
    },
  },
  // promotionAddComponent
  {
    'v0uewidu': {
      'es': 'Alta de Promoción',
      'en': '',
    },
    'xq5xae4d': {
      'es': 'Nombre de la Promoción',
      'en': '',
    },
    'f7vjkr7c': {
      'es': 'Link a información de la promo',
      'en': '',
    },
    '0nya7iuz': {
      'es': 'Fecha Inicio',
      'en': '',
    },
    '5ldpclzc': {
      'es': '',
      'en': '',
    },
    '6aa31cxu': {
      'es': 'Fecha Fin',
      'en': '',
    },
    'jv58lxtu': {
      'es': '',
      'en': '',
    },
    'shxv9020': {
      'es': 'Seleccionar la empresa y producto',
      'en': '',
    },
    '7qv4kdej': {
      'es': 'Option 1',
      'en': '',
    },
    'ow7mq9re': {
      'es': 'Marca',
      'en': '',
    },
    'tpodtqck': {
      'es': 'Buscar en la lista',
      'en': '',
    },
    'nnvuxhwr': {
      'es': 'Seleccionar Empresa',
      'en': '',
    },
    'tkfp111a': {
      'es': '',
      'en': '',
    },
    'ux8wqepw': {
      'es': 'Option 1',
      'en': '',
    },
    'kmgoivij': {
      'es': 'Producto',
      'en': '',
    },
    'uirqctes': {
      'es': 'Search for an item...',
      'en': '',
    },
    'zy394pe9': {
      'es': '',
      'en': '',
    },
    'dfw1vm34': {
      'es': 'Configuración de Medio y Forma de Pago',
      'en': '',
    },
    'n21bxbgc': {
      'es': '',
      'en': '',
    },
    '2ov4eet2': {
      'es': 'Option 1',
      'en': '',
    },
    '1ujcolk6': {
      'es': '',
      'en': '',
    },
    'j8xfclid': {
      'es': 'Search for an item...',
      'en': '',
    },
    'ibqqx89q': {
      'es': 'Medio de Pago',
      'en': '',
    },
    '4g2i6jhm': {
      'es': '',
      'en': '',
    },
    'old4hg1k': {
      'es': '',
      'en': '',
    },
    '9q8p2hgo': {
      'es': 'Search for an item...',
      'en': '',
    },
    'su6w794y': {
      'es': 'Forma de Pago',
      'en': '',
    },
    '9cw5t0uv': {
      'es': '',
      'en': '',
    },
    'uxy053kv': {
      'es': '',
      'en': '',
    },
    'mv6rtw8u': {
      'es': 'Search for an item...',
      'en': '',
    },
    'flz07i0w': {
      'es': 'Tipo de Tarjeta',
      'en': '',
    },
    'stgbhdpu': {
      'es': '',
      'en': '',
    },
    '8do9jlyz': {
      'es': 'Option 1',
      'en': '',
    },
    'nk7zx4j2': {
      'es': '',
      'en': '',
    },
    't5g4phh5': {
      'es': 'Search for an item...',
      'en': '',
    },
    'vh0v2992': {
      'es': 'Tipo de Entidad',
      'en': '',
    },
    '6u9rlfc6': {
      'es': '',
      'en': '',
    },
    'plju52tr': {
      'es': '',
      'en': '',
    },
    'knkhkwb9': {
      'es': 'Search for an item...',
      'en': '',
    },
    'vjz4wrim': {
      'es': 'Nombre Entidad',
      'en': '',
    },
    'x5jjoq1a': {
      'es': 'Configuración de Descuento',
      'en': '',
    },
    'k0ln9p3s': {
      'es': '',
      'en': '',
    },
    'rcu0mk2t': {
      'es': 'Option 1',
      'en': '',
    },
    'aev1np6b': {
      'es': '',
      'en': '',
    },
    'rin0xtqc': {
      'es': 'Search for an item...',
      'en': '',
    },
    '486v4ul8': {
      'es': 'Tipo de  Descuento',
      'en': '',
    },
    'iv3pghn7': {
      'es': '',
      'en': '',
    },
    'jwi6fxow': {
      'es': 'Option 1',
      'en': '',
    },
    's5cjqmjn': {
      'es': 'Día/s',
      'en': '',
    },
    'gpkib4k9': {
      'es': 'Search for an item...',
      'en': '',
    },
    'bghw6z0e': {
      'es': 'Día/s',
      'en': '',
    },
    'xkl40e82': {
      'es': 'Monto',
      'en': '',
    },
    'ro8p2dg0': {
      'es': 'Monto Tope',
      'en': '',
    },
    'bq3w3j7q': {
      'es': '',
      'en': '',
    },
    'izldn5gc': {
      'es': 'Option 1',
      'en': '',
    },
    '440y0swi': {
      'es': '',
      'en': '',
    },
    'g020bpxd': {
      'es': 'Search for an item...',
      'en': '',
    },
    'bkzdwudk': {
      'es': 'Frecuencia',
      'en': '',
    },
    'z6hyt8uv': {
      'es': 'Configurar Otros Descuentos Acumulables',
      'en': '',
    },
    'xh0gv8b1': {
      'es': '',
      'en': '',
    },
    'qcyjh1xe': {
      'es': 'Option 1',
      'en': '',
    },
    '1c4tqumr': {
      'es': '',
      'en': '',
    },
    'bykrqvig': {
      'es': 'Search for an item...',
      'en': '',
    },
    'jaswfkoi': {
      'es': 'Medio de Pago',
      'en': '',
    },
    'hcaz9sam': {
      'es': '',
      'en': '',
    },
    'sycm82si': {
      'es': '',
      'en': '',
    },
    'rc5tnzcc': {
      'es': 'Search for an item...',
      'en': '',
    },
    'y3o334w3': {
      'es': 'Tipo de Descuento',
      'en': '',
    },
    '2wbivmaj': {
      'es': 'Monto acumulable',
      'en': '',
    },
    'z1eh6duh': {
      'es': 'Monto Tope Acumulable',
      'en': '',
    },
    'o91wp4f7': {
      'es': 'Comentarios sobre Descuento Acumulables',
      'en': '',
    },
    'tzhmx1sp': {
      'es': 'Comentarios y/o Condiciones',
      'en': '',
    },
    '4oh04hh2': {
      'es': 'Guardar',
      'en': '',
    },
    'km5rpb37': {
      'es': 'El Nombre es Requerido',
      'en': '',
    },
    'ddu8vre3': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'pj1eg7sq': {
      'es': 'Field is required',
      'en': '',
    },
    '72x8msop': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '801jdovl': {
      'es': 'Field is required',
      'en': '',
    },
    'yggc3zer': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ssft9fil': {
      'es': 'Field is required',
      'en': '',
    },
    'lj6ejby4': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'g07ulzii': {
      'es': 'Field is required',
      'en': '',
    },
    'prbad010': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'bdirnb69': {
      'es': 'Field is required',
      'en': '',
    },
    'y8p6hmcu': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4qm7qzjb': {
      'es': 'Field is required',
      'en': '',
    },
    '13h34ojr': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ij2mqf0a': {
      'es': 'Field is required',
      'en': '',
    },
    'qe5l370u': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // userSideBar
  {
    'owluagaw': {
      'es': 'Datos Personales',
      'en': '',
    },
    'gehf1ta5': {
      'es': 'Preferencias',
      'en': '',
    },
    '88ksmvrx': {
      'es': 'Medios de Pago',
      'en': '',
    },
    'iww37tsu': {
      'es': 'Formas de Pago',
      'en': '',
    },
    'efdjfs25': {
      'es': 'Medios Adicionales',
      'en': '',
    },
    'zlhju3mv': {
      'es': 'Dark Mode',
      'en': '',
    },
    'j4olfcn5': {
      'es': 'Logout',
      'en': '',
    },
  },
  // payment_media_type_component
  {
    'rzokd8bu': {
      'es': 'Forma de Pago',
      'en': '',
    },
    'h8qo6th9': {
      'es': 'Option 1',
      'en': '',
    },
    '0xay5499': {
      'es': '',
      'en': '',
    },
    '9h5r532e': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // card_component
  {
    'k54jwuno': {
      'es': 'Tipo de Tarjeta',
      'en': '',
    },
    'mrm6pqpt': {
      'es': 'Option 1',
      'en': '',
    },
    'ss9z9drw': {
      'es': '',
      'en': '',
    },
    'yakigiqn': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // finantial_entity_type_component
  {
    'iu1c5yto': {
      'es': 'Tipo Entidad',
      'en': '',
    },
    '9sgqqqe6': {
      'es': 'Option 1',
      'en': '',
    },
    'dr97jdiv': {
      'es': '',
      'en': '',
    },
    'mx5rvosq': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // finantial_entity_component
  {
    '7ew7lmsc': {
      'es': 'Entidad Financiera',
      'en': '',
    },
    'phw6vvf5': {
      'es': 'Option 1',
      'en': '',
    },
    'ai3a01av': {
      'es': '',
      'en': '',
    },
    '5njqafvt': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // payment_method_type_component
  {
    's5ssrge4': {
      'es': 'Medio de Pago',
      'en': '',
    },
    'jrssjjpf': {
      'es': 'Option 1',
      'en': '',
    },
    'hq8fw2jm': {
      'es': 'Medio de Pago',
      'en': '',
    },
    'md4k0191': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // discount_type_component
  {
    'k2lk7357': {
      'es': 'Tipo de Descuento',
      'en': '',
    },
    'mjm0lf0v': {
      'es': 'Option 1',
      'en': '',
    },
    'ru2wk3nl': {
      'es': 'Tipo Descuento',
      'en': '',
    },
    'qh7px8gw': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // aditional_payment_method_type_component
  {
    'wi36ekbc': {
      'es': 'Medio de Pago',
      'en': '',
    },
    '18pu5o8y': {
      'es': 'Option 1',
      'en': '',
    },
    'zywohqlv': {
      'es': 'Medio de Pago Adicionales',
      'en': '',
    },
    'gfakshy7': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // aditional_discount_type_component
  {
    'g0cparc6': {
      'es': 'Tipo de Descuento',
      'en': '',
    },
    'u8aegibq': {
      'es': 'Option 1',
      'en': '',
    },
    '707c1pte': {
      'es': 'Tipo Descuento',
      'en': '',
    },
    'nj5sxhq9': {
      'es': 'Search for an item...',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'z9o18ut6': {
      'es': '',
      'en': '',
    },
    'osmokxo0': {
      'es': '',
      'en': '',
    },
    'm1oeaiji': {
      'es': '',
      'en': '',
    },
    'qfvrbism': {
      'es': '',
      'en': '',
    },
    'iycgrnl7': {
      'es': '',
      'en': '',
    },
    'k8z8ivnv': {
      'es': '',
      'en': '',
    },
    'gtoy6unn': {
      'es': '',
      'en': '',
    },
    '5r5qf8s5': {
      'es': '',
      'en': '',
    },
    't8jugg4v': {
      'es': '',
      'en': '',
    },
    'dcx8b9f6': {
      'es': '',
      'en': '',
    },
    'bskk9ere': {
      'es': '',
      'en': '',
    },
    'dz45eh54': {
      'es': '',
      'en': '',
    },
    'pw9wjarq': {
      'es': '',
      'en': '',
    },
    'y6n78ets': {
      'es': '',
      'en': '',
    },
    'prfowcjv': {
      'es': '',
      'en': '',
    },
    'ylw7hhfy': {
      'es': '',
      'en': '',
    },
    'f2jodm9h': {
      'es': '',
      'en': '',
    },
    'qx2b6k14': {
      'es': '',
      'en': '',
    },
    'gtbcpeez': {
      'es': '',
      'en': '',
    },
    '4n1nkiv8': {
      'es': '',
      'en': '',
    },
    'xsj2jvzc': {
      'es': '',
      'en': '',
    },
    'lc4jdwcl': {
      'es': '',
      'en': '',
    },
    'gaj9448k': {
      'es': '',
      'en': '',
    },
    'coebmex1': {
      'es': '',
      'en': '',
    },
    'rzxzqrvw': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));

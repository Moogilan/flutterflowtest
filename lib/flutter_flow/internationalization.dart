import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'ms', 'zh_Hans', 'vi'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String msText = '',
    String zh_HansText = '',
    String viText = '',
  }) =>
      [enText, msText, zh_HansText, viText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // createAccount
  {
    'eadb2giv': {
      'en': 'Welcome to SSESSMENTS',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'lluqe8oa': {
      'en': 'Username',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '0c7ims8j': {
      'en': 'Enter your username here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'rwa5g9zu': {
      'en': 'Email Address',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '9uxnzlj0': {
      'en': 'Enter your email here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'k15otqqf': {
      'en': 'Phone Number',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'c85hbph2': {
      'en': 'Enter your phone number here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'zk63q5x2': {
      'en': 'Company Name',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'uo6qov8q': {
      'en': 'Enter your company name here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'v5qt781n': {
      'en': 'Freemium',
      'ms': 'Freemium',
      'vi': 'Freemium',
      'zh_Hans': '免费增值',
    },
    'pipswclh': {
      'en': 'Premium',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'tfdxh5o7': {
      'en': 'Please select account type...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ceyb9nek': {
      'en': 'Password',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'hadb798z': {
      'en': 'Enter your password here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'n3xlwmeb': {
      'en': 'Confirm Password',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'l1oe3a79': {
      'en': 'Re-enter your password here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'o58x57fv': {
      'en': 'Sign Up',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'psumbhbs': {
      'en': 'Sign In',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    't8ddeqtv': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // changePassword
  {
    'ynkjqal0': {
      'en': 'Reset Password',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ypn4tjjp': {
      'en': 'Email Address',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'a7siblet': {
      'en': 'Your email..',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'hnhnj64d': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'fqsvrmmk': {
      'en': 'Send Reset Link',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ust2qtcj': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // login
  {
    'hdfep8lc': {
      'en': 'Welcome To SSESSMENTS',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'b1wtdnqe': {
      'en': 'Email Address',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'tvkmi19t': {
      'en': 'Enter your email here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '8cfjfdhk': {
      'en': 'Password',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'vp3qv187': {
      'en': 'Enter your password here...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '86d6ic1a': {
      'en': 'Forgot Password?',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '504qmfpm': {
      'en': 'Sign In',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'vshww85h': {
      'en': 'Sign Up',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'gzjrwcvp': {
      'en': 'Continue as Guest',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'pclio6z1': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // profilePage
  {
    'ri8s16qu': {
      'en': 'Profile Information',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'duyqjoz9': {
      'en': 'Username:',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '2x5yvgg2': {
      'en': 'Email Address:',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '4sqmjx4e': {
      'en': 'Phone Number:',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'yo60y7e9': {
      'en': 'Account type:',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'sbdtqj8u': {
      'en': 'Company Name:',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'l56powx3': {
      'en': 'Profile',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '8a5ax91f': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // Mainpage
  {
    'yxxxy622': {
      'en': 'Search',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '4rqyjtmw': {
      'en': 'User Profile',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'vd3b0hzk': {
      'en': 'Notifications',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'c9h9g7gk': {
      'en': 'Favourite',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'hlr52w5l': {
      'en': 'Manage Filters',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'q7vr4gbd': {
      'en': 'Settings',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'axj30gnc': {
      'en': 'Logout',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '55f0wwyq': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // Notification
  {
    '6er89eca': {
      'en': 'Markets',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'k9ldfge0': {
      'en': 'All Markets',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'xl7wtnq0': {
      'en': 'Products',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'qrpnvdvj': {
      'en': 'All Products',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'wvxfevu0': {
      'en': 'Services',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'zbu09euz': {
      'en': 'All Services',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '6hlvnn0r': {
      'en': 'Languages',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '289pf44x': {
      'en': 'English',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ixl1uv1p': {
      'en': 'Save',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '7z1ttwrx': {
      'en': 'Reset',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'f10ulvuz': {
      'en': 'Notification',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '48w4tind': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // filterpage
  {
    '59uhut0o': {
      'en': 'Customise Filter',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'jnblnv40': {
      'en': 'Markets',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '9vszz0nj': {
      'en': 'All Markets',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'o53rdh2v': {
      'en': 'Products',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'eimolbxv': {
      'en': 'All Products',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'reyvfqej': {
      'en': 'Services',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '8w1m7sls': {
      'en': 'All Services',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'jh75l2yq': {
      'en': 'Languages',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'mz9w42vb': {
      'en': 'English',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'jg0lwiiy': {
      'en': 'Date Range',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'y4a29dd0': {
      'en': 'Start Date',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '5n6g1goj': {
      'en': 'End Date',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '9fy2gefv': {
      'en': 'Save',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'u5jfbw10': {
      'en': 'Reset',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'zrwyf2n9': {
      'en': 'Saved Filter',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ajbulp9m': {
      'en': 'Default Fliter',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'r2louygk': {
      'en': '(All products, All Markets, All Services, All Languages)',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '1ipu543s': {
      'en': '[Saved Filter]',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'b4sgq7ex': {
      'en': '[Saved Filter]',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '1v1e5kq3': {
      'en': 'Save',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'cclxrbqr': {
      'en': 'Reset',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'zmybjpko': {
      'en': 'Manage  Filter',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'mo5nu6wz': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // Settings
  {
    'ldeutcbz': {
      'en': 'Font Size',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'tr8i33ko': {
      'en': 'Small',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'kakl61bw': {
      'en': 'Small',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '25ikeude': {
      'en': 'Medium',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'i72rpol5': {
      'en': 'Large',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ky0da9if': {
      'en': 'Extra Large',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '2ps6183u': {
      'en': 'Please select...',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'de8ayy9m': {
      'en': 'Save',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'hczzrrzm': {
      'en': 'Reset',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '9i3jxlhf': {
      'en': 'Settings',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '0k7x27yz': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // ListViewDetails
  {
    '8wwdrffi': {
      'en': 'AlwaysFreeSSESSMENTS',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'mfc2khwx': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // FavouriteCopy
  {
    'ha9kutjz': {
      'en': 'UserName',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'i30ux5zd': {
      'en': 'Job',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'u5b428nd': {
      'en': 'id\n',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'tfffamel': {
      'en': 'Button',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '89qx2gid': {
      'en': 'Favourite',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '2imdmu9r': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // Favourite
  {
    'pzkq6eqh': {
      'en': 'Favourite',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'sm7hkqy4': {
      'en': 'Home',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
  // Miscellaneous
  {
    'mv6eful7': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'avj05mtu': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'jxaxgyh7': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'opoo6ga3': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'yqjizc00': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'p03rsjnq': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'jal4ad8c': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '66pp2xfr': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'knw3fwvs': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'l1sdu3s8': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '84a1fw7f': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'cmtfkk30': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '7agz58aa': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'k8a7juyo': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'isa6wpra': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'ql3ih8oq': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'hpqontmr': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '9tg1bqe3': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    'vxjzu0fu': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
    '3e8awlbz': {
      'en': '',
      'ms': '',
      'vi': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));

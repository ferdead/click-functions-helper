import 'package:click_functions_helper/click_functions_helper.dart';

void main() {
  print('onlyNumbers: ${FunctionsHelper.onlyNumbers('1a2b3c/+')}');
  print('appPath: ${FunctionsHelper.appPath('abc.txt')}');
  print('cript:teste ${FunctionsHelper.encriptar('teste')}');
}

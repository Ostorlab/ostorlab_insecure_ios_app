import 'package:test/test.dart';
import '../bugs/biometric_none_cryptobject.dart';
import '../bugs/clear_text_traffic.dart';
import '../bugs/command_exec.dart';
import '../bugs/ecb_cipher_mode.dart';
import '../bugs/hardcoded_creds_in_url.dart';
import '../bugs/hash_call.dart';
import '../bugs/insecure_commands.dart';
import '../bugs/insecure_random.dart';
import '../bugs/insecure_shared_preferences.dart';
import '../bugs/intent_call.dart';
import '../bugs/oracle_padding.dart';
import '../bugs/path_traversal.dart';
import '../bugs/reflection_api.dart';
import '../bugs/sqlite_database_call.dart';
import '../bugs/static_iv.dart';
import '../bugs/tls_traffic.dart';
import '../bugs/webview_insecure_settings.dart';

void main() {
  test('BiometricNoneCryptObject() executes correctly', () {
    final rule = BiometricNoneCryptObject();
    rule.run();

    expect(rule.description,
        "Use Biometric authentication without a crypto Object.");
    // expect(output, Future<void>);
  });

  test('ClearTextTraffic() executes correctly', () {
    final rule = ClearTextTraffic();
    rule.run();

    expect(rule.description, "Use of cleartext HTTP traffic");
    // expect(output, Future<void>);
  });

  test('CommandExec() executes correctly', () {
    final rule = CommandExec();
    rule.run();

    expect(rule.description, "The application executes commands");
    // expect(output, Future<void>);
  });

  test('ECBCipher() executes correctly', () {
    final rule = ECBCipher();
    rule.run();

    expect(rule.description, "Use of insecure ECB Mode");
    // expect(output, Future<void>);
  });

  test('HardcodedCredsInUrl() executes correctly', () {
    final rule = HardcodedCredsInUrl();
    rule.run();

    expect(rule.description, "Use of hardcoded password in URL");
    // expect(output, Future<void>);
  });

  test('HashCall() executes correctly', () {
    final rule = HashCall();
    rule.run();

    expect(rule.description,
        "The application uses hash functions without salt or iteration");
    // expect(output, Future<void>);
  });

  test('InsecureCommands() executes correctly', () {
    final rule = InsecureCommands();
    rule.run();

    expect(rule.description,
        "The application executes commands from an external storage");
    // expect(output, Future<void>);
  });

  test('InsecureRandom() executes correctly', () {
    final rule = InsecureRandom();
    rule.run();

    expect(rule.description,
        "The application uses insecure random number generators, which can lead to security vulnerabilities and should be replaced with cryptographically secure alternatives.");
    // expect(output, Future<void>);
  });

  test('IntentCall() executes correctly', () {
    final rule = IntentCall();
    rule.run();

    expect(
        rule.description, "The application broadcasts data through an intent");
    // expect(output, Future<void>);
  });

  test('InsecureSharedPreferences() executes correctly', () {
    final rule = InsecureSharedPreferences();
    rule.run();

    expect(
        rule.description, "The application broadcasts data through an intent");
    // expect(output, Future<void>);
  });

  test('OraclePadding() executes correctly', () {
    final rule = OraclePadding();
    rule.run();

    expect(
        rule.description, "This bug rule uses CBC insecure encryption mode.");
    // expect(output, Future<void>);
  });

  test('PathTraversal() executes correctly', () {
    final rule = PathTraversal();
    rule.run();

    expect(rule.description, "call to getLastPathSegment with Uri parameter");
    // expect(output, Future<void>);
  });

  test('ReflectionApi() executes correctly', () {
    final rule = ReflectionApi();
    rule.run();

    expect(rule.description, "call to reflectable to invoke method");
    // expect(output, Future<void>);
  });

  test('SQLiteDatabaseCall() executes correctly', () {
    final rule = SQLiteDatabaseCall();
    rule.run();

    expect(rule.description, "The application uses sqflite");
    // expect(output, Future<void>);
  });

  test('StaticIV() executes correctly', () {
    final rule = StaticIV();
    rule.run();

    expect(rule.description, "TLS/SSL HTTP traffic");
    // expect(output, Future<void>);
  });

  test('TLSTraffic() executes correctly', () {
    final rule = TLSTraffic();
    rule.run();

    expect(rule.description, "Use of hardcoded static IV");
    // expect(output, Future<void>);
  });

  test('WebviewInsecureSettings() executes correctly', () {
    final rule = WebviewInsecureSettings();
    rule.run();

    expect(rule.description, "The application has insecure webview");
    // expect(output, Future<void>);
  });
}

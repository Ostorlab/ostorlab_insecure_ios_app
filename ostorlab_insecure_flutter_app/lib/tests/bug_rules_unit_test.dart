import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import '../bugs/biometric_none_cryptobject.dart';
import '../bugs/clear_text_traffic.dart';
import '../bugs/command_exec.dart';
import '../bugs/ecb_cipher_mode.dart';
import '../bugs/hardcoded_creds_in_url.dart';
import '../bugs/hash_call.dart';
import '../bugs/insecure_commands.dart';
import '../bugs/insecure_random.dart';
import '../bugs/intent_call.dart';
import '../bugs/oracle_padding.dart';
import '../bugs/path_traversal.dart';
import '../bugs/reflection_api.dart';
import '../bugs/sqlite_database_call.dart';
import '../bugs/static_iv.dart';
import '../bugs/tls_traffic.dart';
import '../bugs/webview_insecure_settings.dart';
import 'package:local_auth/local_auth.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
      'BiometricNoneCryptObject() executes correctly ** skipped while no mock is available',
      () async {
    final rule = BiometricNoneCryptObject();
    await rule.run();

    expect(rule.description,
        "Use Biometric authentication without a crypto Object.");
  }, skip: true);

  test('ClearTextTraffic() executes correctly', () async {
    final rule = ClearTextTraffic();
    await rule.run();

    expect(rule.description, "Use of cleartext HTTP traffic");
  });

  test('CommandExec() executes correctly', () async {
    final rule = CommandExec();
    await rule.run();

    expect(rule.description, "The application executes commands");
  });

  test('ECBCipher() executes correctly', () async {
    final rule = ECBCipher();
    await rule.run();

    expect(rule.description, "Use of insecure ECB Mode");
  });

  test(
      'HardcodedCredsInUrl() executes correctly ** skipped while no mock is available',
      () async {
    final rule = HardcodedCredsInUrl();
    await rule.run();

    expect(rule.description, "Use of hardcoded password in URL");
  }, skip: true);

  test('HashCall() executes correctly', () async {
    final rule = HashCall();
    await rule.run();

    expect(rule.description,
        "The application uses hash functions without salt or iteration");
  });

  test('InsecureCommands() executes correctly', () async {
    final rule = InsecureCommands();
    await rule.run();

    expect(rule.description,
        "The application executes commands from an external storage");
  });

  test('InsecureRandom() executes correctly', () async {
    final rule = InsecureRandom();
    await rule.run();

    expect(rule.description,
        "The application uses insecure random number generators, which can lead to security vulnerabilities and should be replaced with cryptographically secure alternatives.");
  });

  test('IntentCall() executes correctly', () async {
    final rule = IntentCall();
    await rule.run();

    expect(
        rule.description, "The application broadcasts data through an intent");
  });

  test('OraclePadding() executes correctly', () async {
    final rule = OraclePadding();
    await rule.run();

    expect(
        rule.description, "This bug rule uses CBC insecure encryption mode.");
  });

  test(
      'PathTraversal() executes correctly ** skipped while no mock is available',
      () async {
    final rule = PathTraversal();
    await rule.run();

    expect(rule.description, "call to getLastPathSegment with Uri parameter");
  }, skip: true);

  test(
      'ReflectionApi() executes correctly ** skipped while no mock is available',
      () async {
    final rule = ReflectionApi();
    await rule.run();

    expect(rule.description, "call to reflectable to invoke method");
  }, skip: true);

  test(
      'SQLiteDatabaseCall() executes correctly ** skipped while no mock is available',
      () async {
    final rule = SQLiteDatabaseCall();
    await rule.run();

    expect(rule.description, "The application uses sqflite");
  }, skip: true);

  test('StaticIV() executes correctly', () async {
    final rule = StaticIV();
    await rule.run();

    expect(rule.description, "Use of hardcoded static IV");
  });

  test('TLSTraffic() executes correctly', () async {
    final rule = TLSTraffic();
    await rule.run();

    expect(rule.description, "TLS/SSL HTTP traffic");
  });

  test(
      'WebviewInsecureSettings() executes correctly ** skipped while no mock is available',
      () async {
    final rule = WebviewInsecureSettings();
    await rule.run();

    expect(rule.description, "The application has insecure webview");
  }, skip: true);
}

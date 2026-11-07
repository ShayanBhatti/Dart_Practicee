import 'dart:io';


void main() {
  print('========== DART ENVIRONMENT DIAGNOSTIC ==========');
  print('Name:                Muhammad Ali');
  print('Registration Number: BIT-2026-001');
  print('Program:             BS Information Technology');
  print('Dart Version:        ${Platform.version}');
  print('Operating System:    ${Platform.operatingSystem} '
      '${Platform.operatingSystemVersion}');


  try {
    final result = Process.runSync('flutter', ['--version']);
    if (result.exitCode == 0) {
      final firstLine = result.stdout.toString().trim().split('\n').first;
      print('Flutter Version:     $firstLine');
    } else {
      print('Flutter Version:     (flutter command returned an error)');
    }
  } on ProcessException {
    print('Flutter Version:     (Flutter SDK not on PATH)');
  }
  print('=================================================');
}
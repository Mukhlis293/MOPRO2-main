import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pm2mukhlis/login.dart'; // Pastikan path sesuai

void main() {
  testWidgets('Halaman Login muncul dengan elemen utama',
      (WidgetTester tester) async {
    // Build HalamanLogin dan trigger a frame.
    await tester.pumpWidget(const CupertinoApp(home: HalamanLogin()));

    // Periksa apakah elemen utama halaman login muncul
    expect(
        find.text('Nomor telepon, email, atau nama pengguna'), findsOneWidget);
    expect(find.text('Kata Sandi'), findsOneWidget);
    expect(find.text('Masuk'), findsOneWidget);
  });
}

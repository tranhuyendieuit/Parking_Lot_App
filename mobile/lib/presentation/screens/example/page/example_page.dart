import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/presentation/screens/qr_scan/page/qr_scan_page.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QrScanPage()));
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.mountainMeadow),
          ),
          child: const Text("QR Scan"),
        ),
      ),
    );
  }
}

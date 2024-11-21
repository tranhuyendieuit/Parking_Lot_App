import 'package:flutter/material.dart';
import 'package:mobile/presentation/screens/qr_scan/page/qr_scan_body.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  @override
  Widget build(BuildContext context) {
    return const QrScanBody();
  }
}
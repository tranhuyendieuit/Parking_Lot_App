import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile/config/themes/app_colors.dart';
import 'package:mobile/config/themes/app_text_styles.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/presentation/components/custom_button.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanBody extends StatefulWidget {
  const QrScanBody({super.key});

  @override
  State<QrScanBody> createState() => _QrScanBodyState();
}

class _QrScanBodyState extends State<QrScanBody> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          Constants.scanQrCode,
          style: AppTextStyles.montserratStyle.bold16Black,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                    borderColor: AppColors.mountainMeadow,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: MediaQuery.of(context).size.width * 0.8),
              )),
          Expanded(
              flex: 1,
              child: Center(
                child: CustomButton(
                  onTap: () {},
                  text: Constants.validate,
                  width: 250,
                  height: 50,
                  textStyle: AppTextStyles.montserratStyle.bold12White,
                ),
              ))
        ],
      ),
    );
  }
}

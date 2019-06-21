//import 'dart:async';
//
//import 'package:flutter/services.dart';
//
//class PdfPage {
//  static const MethodChannel _channel =
//      const MethodChannel('pdf_page');
//
//  static Future<String> get platformVersion async {
//    final String version = await _channel.invokeMethod('getPlatformVersion');
//    return version;
//  }
//}


library pdf_page;

export 'src/page.dart' show PDFPage;
export 'src/document.dart' show PDFDocument;
export 'src/Viewer.dart' show PDFViewer;
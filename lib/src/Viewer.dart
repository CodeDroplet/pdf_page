import 'package:flutter/material.dart';

import '../pdf_page.dart';
import 'document.dart';

class PDFViewer extends StatefulWidget {
  final PDFDocument document;

  const PDFViewer({Key key, this.document}) : super(key: key);

  @override
  _PDFViewerState createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {

  PDFPage _page;
  int _pageNumber = 1;
  bool _isLoading =true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageNumber = 1;
    _isLoading = true;
    _loadPage();
  }

  @override
  void didUpdateWidget(PDFViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    _pageNumber = 1;
    _isLoading = true;
    _loadPage();
  }


  _loadPage( ) async{
    setState(() {
      _isLoading = true;
    });
    _page = await widget.document.get(page:_pageNumber);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _page,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticledetailsScreen extends StatefulWidget {
  const ArticledetailsScreen({super.key, required this.url});
  final String? url;

  @override
  State<ArticledetailsScreen> createState() => _ArticledetailsScreenState();
}

class _ArticledetailsScreenState extends State<ArticledetailsScreen> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()..loadRequest(Uri.parse(widget.url!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Details'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

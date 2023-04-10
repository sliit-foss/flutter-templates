import 'package:flutter/material.dart';

class SizeProvider extends StatefulWidget {
  final Widget child;
  final Function(Size?) onChildSize;

  const SizeProvider({required Key key, required this.onChildSize, required this.child}) : super(key: key);

  @override
  State<SizeProvider> createState() => _SizeProviderState();
}

class _SizeProviderState extends State<SizeProvider> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.onChildSize(context.size);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

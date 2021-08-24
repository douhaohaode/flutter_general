/* ROOT */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current?.location;
        print(title);
        return Scaffold(
          appBar: AppBar(title: Text(title ?? '')),
          body: GetRouterOutlet(
            initialRoute: '/splash',
          ),
        );
      },
    );
  }
}
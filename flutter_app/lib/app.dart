import 'package:flutter/material.dart';
import 'package:flux/services/router_service.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teste Flux',
      getPages: RouterService.pages,
    );
  }
}

import 'package:flux/ui/home_page/home_page_bloc.dart';
import 'package:flux/ui/home_page/home_page_view.dart';
import 'package:get/get.dart';

class RouterService {
  static const HOME = '/';

  static final pages = <GetPage>[
    GetPage(
        name: HOME, page: () => HomePageView(), binding: HomePageBindings()),
  ];
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

enum HomeScreenPages { home, complaints, settings }

@Riverpod(keepAlive: true)
class HomePageController extends _$HomePageController {
  @override
  HomeScreenPages build() {
    return HomeScreenPages.home;
  }

  void navigateTo(HomeScreenPages page) {
    state = page;
  }
}

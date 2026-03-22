// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomePageController)
final homePageControllerProvider = HomePageControllerProvider._();

final class HomePageControllerProvider
    extends $NotifierProvider<HomePageController, HomeScreenPages> {
  HomePageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homePageControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homePageControllerHash();

  @$internal
  @override
  HomePageController create() => HomePageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeScreenPages value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeScreenPages>(value),
    );
  }
}

String _$homePageControllerHash() =>
    r'fff61b4a3a1609049e1b24c07ea96b680502c323';

abstract class _$HomePageController extends $Notifier<HomeScreenPages> {
  HomeScreenPages build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<HomeScreenPages, HomeScreenPages>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomeScreenPages, HomeScreenPages>,
              HomeScreenPages,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

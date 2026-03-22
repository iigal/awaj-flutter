// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoriesNotifier)
final categoriesProvider = CategoriesNotifierProvider._();

final class CategoriesNotifierProvider
    extends $AsyncNotifierProvider<CategoriesNotifier, List<Categories>> {
  CategoriesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoriesNotifierHash();

  @$internal
  @override
  CategoriesNotifier create() => CategoriesNotifier();
}

String _$categoriesNotifierHash() =>
    r'c58ab49e500ecc900d2a97fa050779815e25c06d';

abstract class _$CategoriesNotifier extends $AsyncNotifier<List<Categories>> {
  FutureOr<List<Categories>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Categories>>, List<Categories>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Categories>>, List<Categories>>,
              AsyncValue<List<Categories>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

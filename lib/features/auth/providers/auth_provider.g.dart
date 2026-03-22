// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthProvider)
final authProviderProvider = AuthProviderProvider._();

final class AuthProviderProvider
    extends $AsyncNotifierProvider<AuthProvider, AuthUser?> {
  AuthProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authProviderHash();

  @$internal
  @override
  AuthProvider create() => AuthProvider();
}

String _$authProviderHash() => r'8ce5eaa381195c36fc72ed7e393a85e2c1674a84';

abstract class _$AuthProvider extends $AsyncNotifier<AuthUser?> {
  FutureOr<AuthUser?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AuthUser?>, AuthUser?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthUser?>, AuthUser?>,
              AsyncValue<AuthUser?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

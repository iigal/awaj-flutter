// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$complaintsNotifierHash() =>
    r'9ab96c7be29bd7600cc0c694409d849d06901b54';

/// See also [ComplaintsNotifier].
@ProviderFor(ComplaintsNotifier)
final complaintsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    ComplaintsNotifier, List<Complaints>>.internal(
  ComplaintsNotifier.new,
  name: r'complaintsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$complaintsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ComplaintsNotifier = AutoDisposeAsyncNotifier<List<Complaints>>;
String _$complaintsCommentNotifierHash() =>
    r'94661a7e0fdcec5645fda2e12f85d7cb1146e5ac';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ComplaintsCommentNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<ComplaintsComment>> {
  late final int id;

  FutureOr<List<ComplaintsComment>> build(
    int id,
  );
}

/// See also [ComplaintsCommentNotifier].
@ProviderFor(ComplaintsCommentNotifier)
const complaintsCommentNotifierProvider = ComplaintsCommentNotifierFamily();

/// See also [ComplaintsCommentNotifier].
class ComplaintsCommentNotifierFamily
    extends Family<AsyncValue<List<ComplaintsComment>>> {
  /// See also [ComplaintsCommentNotifier].
  const ComplaintsCommentNotifierFamily();

  /// See also [ComplaintsCommentNotifier].
  ComplaintsCommentNotifierProvider call(
    int id,
  ) {
    return ComplaintsCommentNotifierProvider(
      id,
    );
  }

  @override
  ComplaintsCommentNotifierProvider getProviderOverride(
    covariant ComplaintsCommentNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'complaintsCommentNotifierProvider';
}

/// See also [ComplaintsCommentNotifier].
class ComplaintsCommentNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ComplaintsCommentNotifier,
        List<ComplaintsComment>> {
  /// See also [ComplaintsCommentNotifier].
  ComplaintsCommentNotifierProvider(
    int id,
  ) : this._internal(
          () => ComplaintsCommentNotifier()..id = id,
          from: complaintsCommentNotifierProvider,
          name: r'complaintsCommentNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$complaintsCommentNotifierHash,
          dependencies: ComplaintsCommentNotifierFamily._dependencies,
          allTransitiveDependencies:
              ComplaintsCommentNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  ComplaintsCommentNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<List<ComplaintsComment>> runNotifierBuild(
    covariant ComplaintsCommentNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ComplaintsCommentNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ComplaintsCommentNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ComplaintsCommentNotifier,
      List<ComplaintsComment>> createElement() {
    return _ComplaintsCommentNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ComplaintsCommentNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ComplaintsCommentNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<ComplaintsComment>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ComplaintsCommentNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ComplaintsCommentNotifier,
        List<ComplaintsComment>> with ComplaintsCommentNotifierRef {
  _ComplaintsCommentNotifierProviderElement(super.provider);

  @override
  int get id => (origin as ComplaintsCommentNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

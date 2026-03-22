// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ComplaintsNotifier)
final complaintsProvider = ComplaintsNotifierFamily._();

final class ComplaintsNotifierProvider
    extends $AsyncNotifierProvider<ComplaintsNotifier, List<Complaints>> {
  ComplaintsNotifierProvider._({
    required ComplaintsNotifierFamily super.from,
    required ComplaintTableState super.argument,
  }) : super(
         retry: null,
         name: r'complaintsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$complaintsNotifierHash();

  @override
  String toString() {
    return r'complaintsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ComplaintsNotifier create() => ComplaintsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ComplaintsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$complaintsNotifierHash() =>
    r'53095576d742de80e8a4550a0a2ccc75de38db16';

final class ComplaintsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ComplaintsNotifier,
          AsyncValue<List<Complaints>>,
          List<Complaints>,
          FutureOr<List<Complaints>>,
          ComplaintTableState
        > {
  ComplaintsNotifierFamily._()
    : super(
        retry: null,
        name: r'complaintsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ComplaintsNotifierProvider call({required ComplaintTableState filter}) =>
      ComplaintsNotifierProvider._(argument: filter, from: this);

  @override
  String toString() => r'complaintsProvider';
}

abstract class _$ComplaintsNotifier extends $AsyncNotifier<List<Complaints>> {
  late final _$args = ref.$arg as ComplaintTableState;
  ComplaintTableState get filter => _$args;

  FutureOr<List<Complaints>> build({required ComplaintTableState filter});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Complaints>>, List<Complaints>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Complaints>>, List<Complaints>>,
              AsyncValue<List<Complaints>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(filter: _$args));
  }
}

@ProviderFor(ComplaintsCountNotifier)
final complaintsCountProvider = ComplaintsCountNotifierProvider._();

final class ComplaintsCountNotifierProvider
    extends $AsyncNotifierProvider<ComplaintsCountNotifier, ComplaintsCount> {
  ComplaintsCountNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'complaintsCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$complaintsCountNotifierHash();

  @$internal
  @override
  ComplaintsCountNotifier create() => ComplaintsCountNotifier();
}

String _$complaintsCountNotifierHash() =>
    r'b7b9d5e4f82bf4baaffcf5f04fdd591ffcc2cc09';

abstract class _$ComplaintsCountNotifier
    extends $AsyncNotifier<ComplaintsCount> {
  FutureOr<ComplaintsCount> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ComplaintsCount>, ComplaintsCount>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ComplaintsCount>, ComplaintsCount>,
              AsyncValue<ComplaintsCount>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ComplaintsCommentNotifier)
final complaintsCommentProvider = ComplaintsCommentNotifierFamily._();

final class ComplaintsCommentNotifierProvider
    extends
        $AsyncNotifierProvider<
          ComplaintsCommentNotifier,
          List<ComplaintsComment>
        > {
  ComplaintsCommentNotifierProvider._({
    required ComplaintsCommentNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'complaintsCommentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$complaintsCommentNotifierHash();

  @override
  String toString() {
    return r'complaintsCommentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ComplaintsCommentNotifier create() => ComplaintsCommentNotifier();

  @override
  bool operator ==(Object other) {
    return other is ComplaintsCommentNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$complaintsCommentNotifierHash() =>
    r'f4ff132cb769af2e38c6d1010b0614b7a3637a20';

final class ComplaintsCommentNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ComplaintsCommentNotifier,
          AsyncValue<List<ComplaintsComment>>,
          List<ComplaintsComment>,
          FutureOr<List<ComplaintsComment>>,
          String
        > {
  ComplaintsCommentNotifierFamily._()
    : super(
        retry: null,
        name: r'complaintsCommentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ComplaintsCommentNotifierProvider call(String id) =>
      ComplaintsCommentNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'complaintsCommentProvider';
}

abstract class _$ComplaintsCommentNotifier
    extends $AsyncNotifier<List<ComplaintsComment>> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  FutureOr<List<ComplaintsComment>> build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ComplaintsComment>>,
              List<ComplaintsComment>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ComplaintsComment>>,
                List<ComplaintsComment>
              >,
              AsyncValue<List<ComplaintsComment>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

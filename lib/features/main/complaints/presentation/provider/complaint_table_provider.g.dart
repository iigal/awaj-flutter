// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_table_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ComplaintTableFilterState)
final complaintTableFilterStateProvider = ComplaintTableFilterStateProvider._();

final class ComplaintTableFilterStateProvider
    extends $NotifierProvider<ComplaintTableFilterState, ComplaintTableState> {
  ComplaintTableFilterStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'complaintTableFilterStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$complaintTableFilterStateHash();

  @$internal
  @override
  ComplaintTableFilterState create() => ComplaintTableFilterState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ComplaintTableState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ComplaintTableState>(value),
    );
  }
}

String _$complaintTableFilterStateHash() =>
    r'0373433c0c1361844e8bb7f3f105479776944406';

abstract class _$ComplaintTableFilterState
    extends $Notifier<ComplaintTableState> {
  ComplaintTableState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ComplaintTableState, ComplaintTableState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ComplaintTableState, ComplaintTableState>,
              ComplaintTableState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

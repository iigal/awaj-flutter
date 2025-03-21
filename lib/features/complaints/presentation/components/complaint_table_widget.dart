import 'dart:async';

import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/complaints/presentation/provider/complaint_table_provider.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:awaj/features/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/shared_components/icon_date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

class ComplaintTable extends ConsumerStatefulWidget {
  const ComplaintTable({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplaintTableState();
}

class _ComplaintTableState extends ConsumerState<ComplaintTable> {
  final _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filterProvider = ref.watch(complaintTableFilterStateProvider);
    final complaintProvider = ref.watch(
      complaintsNotifierProvider(filter: filterProvider),
    );
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                placeholder: Text('Search something...'),
                leading: const Icon(Icons.search).iconMutedForeground(),
                trailing: IconButton.text(
                  icon: const Icon(Icons.close),
                  density: ButtonDensity.compact,
                  onPressed: () {
                    _searchController.clear();
                    ref.read(complaintTableFilterStateProvider.notifier).setSearchTerm = _searchController.text;
                  },
                ),
                onChanged: (value) {
                  if (_debounce?.isActive ?? false) _debounce?.cancel();
                  _debounce = Timer(const Duration(milliseconds: 500), () {
                    ref.read(complaintTableFilterStateProvider.notifier).setSearchTerm = _searchController.text;
                  });
                },
              ),
            ),
            const Gap(8),
            IconButton.outline(
              icon: const Icon(Icons.sort),
              onPressed: () => bottomSheetBuilder(context, const ComplaintTableFilterSheet()),
            )
          ],
        ),
        Expanded(
          child: complaintProvider.when(
            data: (data) {
              if (data.isEmpty) {
                return const Text("No issues created yet.");
              }
              return RefreshTrigger(
                minExtent: 100,
                maxExtent: 250,
                onRefresh: () async {
                  ref.invalidate(complaintsNotifierProvider);
                },
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => context.goNamed("complaint-detail", extra: data[index]),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CreatedAtDateWidget(
                                date: data[index].createdAt,
                              ),
                              const Gap(16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[index].title,
                                    ).semiBold().large(),
                                    const Gap(6),
                                    Text(
                                      data[index].description,
                                    ),
                                    const Gap(6),
                                    showProgressStatusBadge(data[index].status),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Progress(
                                            progress: data[index].progress / 100,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        const Gap(8),
                                        Text("${data[index].progress}%"),
                                      ],
                                    ),
                                    const Gap(6),
                                    Row(
                                      children: [
                                        const Icon(Icons.access_time_outlined),
                                        Text(
                                          timeago.format(data[index].updatedAt),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ],
    );
  }
}

class ComplaintTableFilterSheet extends ConsumerWidget {
  const ComplaintTableFilterSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(12),
          const Text("Filter by status").bold().large(),
          const Gap(8),
          Row(
            children: [
              Checkbox(
                state: (ref.watch(complaintTableFilterStateProvider.notifier).hasStatus("pending"))
                    ? CheckboxState.checked
                    : CheckboxState.unchecked,
                onChanged: (value) {
                  if (value == CheckboxState.checked) {
                    ref.read(complaintTableFilterStateProvider.notifier).setStatus = "pending";
                  } else {
                    ref.read(complaintTableFilterStateProvider.notifier).unsetStatus = "pending";
                  }
                },
              ),
              const Text("Pending")
            ],
          ),
          Row(
            children: [
              Checkbox(
                state: (ref.watch(complaintTableFilterStateProvider.notifier).hasStatus("progress"))
                    ? CheckboxState.checked
                    : CheckboxState.unchecked,
                onChanged: (value) {
                  if (value == CheckboxState.checked) {
                    ref.read(complaintTableFilterStateProvider.notifier).setStatus = "progress";
                  } else {
                    ref.read(complaintTableFilterStateProvider.notifier).unsetStatus = "progress";
                  }
                },
              ),
              const Text("In Progress")
            ],
          ),
          Row(
            children: [
              Checkbox(
                state: (ref.watch(complaintTableFilterStateProvider.notifier).hasStatus("completed"))
                    ? CheckboxState.checked
                    : CheckboxState.unchecked,
                onChanged: (value) {
                  if (value == CheckboxState.checked) {
                    ref.read(complaintTableFilterStateProvider.notifier).setStatus = "completed";
                  } else {
                    ref.read(complaintTableFilterStateProvider.notifier).unsetStatus = "completed";
                  }
                },
              ),
              const Text("Completed")
            ],
          ),
          Row(
            children: [
              Checkbox(
                state: (ref.watch(complaintTableFilterStateProvider.notifier).hasStatus("cancelled"))
                    ? CheckboxState.checked
                    : CheckboxState.unchecked,
                onChanged: (value) {
                  if (value == CheckboxState.checked) {
                    ref.read(complaintTableFilterStateProvider.notifier).setStatus = "cancelled";
                  } else {
                    ref.read(complaintTableFilterStateProvider.notifier).unsetStatus = "cancelled";
                  }
                },
              ),
              const Text("Cancelled")
            ],
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const IconButton.destructive(
                icon: Icon(Icons.delete),
              ),
              const Gap(8),
              Expanded(
                  child: OutlineButton(
                child: const Text("Cancel"),
                onPressed: () => closeSheet(context),
              )),
              const Gap(8),
              Expanded(
                  child: PrimaryButton(
                child: const Text("Save"),
                onPressed: () {
                  ref.read(complaintTableFilterStateProvider.notifier).setSearchTerm = "hi";
                  closeSheet(context);
                },
              )),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:awaj/features/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/shared_components/icon_date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ComplaintTable extends StatelessWidget {
  const ComplaintTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final complaintProvider = ref.watch(complaintsNotifierProvider);
        return complaintProvider.when(
          data: (data) {
            if (data.isEmpty) {
              return const Text("No issues created yet.");
            }

            return RefreshTrigger(
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
                                  const PrimaryBadge(
                                    child: Text('Progress'),
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Progress(
                                          progress: 0.5,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Gap(8),
                                      Text("50%"),
                                    ],
                                  ),
                                  const Gap(6),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Row(
                                        children: [Icon(Icons.comment_outlined), Text("15")],
                                      ),
                                      gap(8),
                                      const Row(
                                        children: [Icon(Icons.access_time_outlined), Text("7 days")],
                                      ),
                                    ],
                                  )
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
        );
      },
    );
  }
}

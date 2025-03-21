import 'package:awaj/components/scaffold_wrapper.dart';
import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/complaints/presentation/components/complaint_detail_tab_widget.dart';
import 'package:awaj/features/shared_components/icon_date.dart';
import 'package:go_router/go_router.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ComplaintDetailPage extends StatelessWidget {
  final Complaints? complaint;
  const ComplaintDetailPage({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      title: "Issue Detail",
      child: Builder(builder: (context) {
        if (complaint == null) {
          return Center(
            child: OutlineButton(
              child: const Text("Go Back"),
              onPressed: () => context.pop(),
            ),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    complaint!.title,
                  ).large().semiBold(),
                  const Gap(2),
                  Row(
                    children: [
                      const Text("Created At"),
                      OutlineBadge(
                        child: IconDate(
                          dateInString: complaint!.createdAt.toString(),
                        ),
                      ),
                    ],
                  ),
                  const Gap(6),
                  showProgressStatusBadge(complaint!.status),
                  Row(
                    children: [
                      Expanded(
                        child: Progress(
                          progress: complaint!.progress / 100,
                          color: Colors.orange,
                        ),
                      ),
                      const Gap(8),
                      Text("${complaint!.progress}%"),
                    ],
                  ),
                  const Gap(6),
                  Text(
                    complaint!.description,
                  ),
                  const Gap(6),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.access_time_outlined),
                        const Text("Last Updated "),
                        Text(timeago.format(complaint!.updatedAt)).bold(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(6),
            Expanded(
              child: ComplaintDetailTabWidget(
                complaint: complaint!,
              ),
            ),
          ],
        );
      }),
    );
  }
}

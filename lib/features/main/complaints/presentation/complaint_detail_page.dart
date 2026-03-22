
import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/main/complaints/presentation/components/complaint_detail_tab_widget.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:awaj/features/shared_components/icon_date.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ComplaintDetailPage extends StatelessWidget {
  final Complaints? complaint;
  const ComplaintDetailPage({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          hasBackButton: true,
          hasActionButton: false,
          title: context.tr("Issue Detail"),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      complaint!.title,
                    ).large().semiBold(),
                    const Gap(2),
                    Row(
                      children: [
                        const Text("Created At").xSmall(),
                        OutlineBadge(
                          child: IconDate(
                            dateInString: complaint!.created.toString(),
                          ),
                        ),
                      ],
                    ),
                    const Gap(6),
                    Card(
                      padding: const EdgeInsets.all(4.0),
                      fillColor: Colors.gray.shade100,
                      filled: true,
                      child: Text(
                        complaint!.description,
                      ),
                    ),
                    const Gap(12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.access_time_outlined).iconSmall(),
                          Gap(8),
                          const Text("Last Updated "),
                          Gap(4),
                          Text(timeago.format(complaint!.updated)).semiBold(),
                        ],
                      ).xSmall(),
                    ),
                  ],
                ),
              ),
              const Gap(6),
              Card(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Status").semiBold(),
                          Gap(8),
                          showProgressStatusBadge("Unknown"),
                        ],
                      ),
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
                    ],
                  )),
              const Gap(6),
              Expanded(
                child: ComplaintDetailTabWidget(
                  complaint: complaint!,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

import 'package:awaj/components/scaffold_wrapper.dart';
import 'package:awaj/features/complaints/presentation/components/complaint_detail_tab_widget.dart';
import 'package:awaj/features/shared_components/icon_date.dart';
import 'package:go_router/go_router.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ComplaintDetailPage extends StatelessWidget {
  final Complaints? complaint;
  const ComplaintDetailPage({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      child: Builder(builder: (context) {
        if (complaint == null) {
          return Center(
            child: OutlineButton(
              child: const Text("Go Back"),
              onPressed: () => context.pop(),
            ),
          );
        }
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                complaint!.title,
              ).large().semiBold(),
              Gap(2),
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
              Gap(6),
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
              Gap(6),
              Text(
                complaint!.description,
              ),
              Gap(6),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Last Updated At"),
                    OutlineBadge(
                      child: IconDate(
                        dateInString: complaint!.createdAt.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(6),
              Expanded(
                child: ComplaintDetailTabWidget(
                  complaintId: complaint!.id,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

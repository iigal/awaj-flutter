import 'package:awaj/features/complaints/presentation/components/complaint_form_widget.dart';
import 'package:awaj/features/complaints/presentation/components/complaint_table_widget.dart';
import 'package:awaj/features/complaints/presentation/provider/total_complaints_provider.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  void bottomSheetBuilder(BuildContext context) {
    openDrawer(
      context: context,
      expands: true,
      builder: (BuildContext context) => const ComplaintFormWidget(),
      position: OverlayPosition.bottom,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Your Complaints',
            ).xLarge().bold(),
            const Gap(6),
            OutlineButton(
              onPressed: () {},
              child: Consumer(
                builder: (context, ref, child) => Text(ref.watch(totalComplaintsCountProvider).toString()),
              ),
            ),
          ],
        ),
        const Gap(6),
        Text(
          DateFormat('EEE, MMMM d, y').format(DateTime.now()),
        ),
        const Gap(6),
        const Expanded(
          child: ComplaintTable(),
        ),
        Align(
          alignment: Alignment.center,
          child: OutlineButton(
            trailingExpanded: true,
            onPressed: () => bottomSheetBuilder(context),
            leading: const Icon(Icons.add),
            child: const Text("Create New Issue"),
          ),
        ),
      ],
    );
  }
}

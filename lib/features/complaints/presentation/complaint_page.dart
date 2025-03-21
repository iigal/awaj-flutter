import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/complaints/presentation/components/complaint_form_widget.dart';
import 'package:awaj/features/complaints/presentation/components/complaint_table_widget.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rp;
import 'package:intl/intl.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          bottom: 8,
          right: 8,
          child: IconButton.primary(
            onPressed: () => bottomSheetBuilder(context, const ComplaintFormWidget()),
            trailing: const Text("Add Issue"),
            icon: const Icon(Icons.add),
          ),
        ),
        Positioned.fill(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text(
                    'Your Complaints',
                  ).xLarge().bold(),
                  const Gap(6),
                  OutlineButton(
                    onPressed: () {},
                    child: rp.Consumer(
                      builder: (context, ref, child) => ref.watch(complaintsCountNotifierProvider).when(
                          data: (data) => Text(data.count.toString()),
                          error: (err, stack) => Container(),
                          loading: () => const CircularProgressIndicator()),
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
              const Gap(60),
            ],
          ),
        ),
      ],
    );
  }
}

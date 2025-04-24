import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/main/complaints/presentation/components/complaint_form_widget.dart';
import 'package:awaj/features/main/complaints/presentation/components/complaint_table_widget.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: context.tr("yourComplaints"),
        ),
        // OutlineButton(
        //   onPressed: () {},
        //   child: rp.Consumer(
        //     builder: (context, ref, child) => ref.watch(complaintsCountNotifierProvider).when(
        //         data: (data) => Text(data.count.toString()),
        //         error: (err, stack) => Container(),
        //         loading: () => const CircularProgressIndicator()),
        //   ),
        // ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: 8,
              right: 8,
              child: IconButton.primary(
                onPressed: () {
                  bottomSheetBuilder(context, const ComplaintFormWidget());
                },
                trailing: const Text("Add Issue"),
                icon: const Icon(Icons.add),
              ),
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    DateFormat('EEE, MMMM d, y').format(DateTime.now()),
                  ),
                  const Gap(12),
                  const Expanded(
                    child: ComplaintTable(),
                  ),
                  const Gap(60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

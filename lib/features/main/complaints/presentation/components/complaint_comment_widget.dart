import 'package:awaj/features/main/complaints/api/complaints_repository.dart';
import 'package:awaj/features/main/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ComplaintCommentWidget extends ConsumerStatefulWidget {
  final int complaintId;
  final int? complaintCommentId;

  const ComplaintCommentWidget({super.key, required this.complaintId, this.complaintCommentId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplaintCommentWidgetState();
}

class _ComplaintCommentWidgetState extends ConsumerState<ComplaintCommentWidget> {
  final _commentKey = const FormKey<String>('commentKey');
  FormController controller = FormController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  bool isReply = false;
  bool isSaving = false;
  @override
  void initState() {
    super.initState();
    if (widget.complaintCommentId != null) {
      isReply = true;
    }
  }

  void createComplaintComment(Map<FormKey<dynamic>, dynamic> values) async {
    setState(() {
      isSaving = true;
    });

    try {
      var complaintReq = ComplaintCommentRequest(
        message: values[_commentKey],
        userId: 1,
        issueId: widget.complaintId,
        parentId: widget.complaintCommentId,
      );
      await ref.read(complaintsRepositoryProvider).registerComplaintComments(complaintReq);
      ref.invalidate(complaintsCommentNotifierProvider);
    } catch (err) {}
    setState(() {
      isSaving = false;
    });
    closeSheet(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IndexedStack(
        index: (isSaving) ? 1 : 0,
        children: [
          Form(
            key: _formKey,
            controller: controller,
            onSubmit: (context, values) => createComplaintComment(values),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Register Complaint",
                ),
                const SizedBox(
                  height: 12,
                ),
                FormField<String>(
                  key: _commentKey,
                  label: const Text("Comment"),
                  validator: const NotEmptyValidator(),
                  child: const TextArea(
                    placeholder: Text("Add comment here"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: OutlineButton(
                        onPressed: () {
                          closeSheet(context);
                        },
                        child: const Text("Cancel"),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: FormErrorBuilder(
                        builder: (context, errors, child) => OutlineButton(
                          onPressed: () {
                            // print(controller.values);
                            context.submitForm();
                          },
                          child: const Text("Save"),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}

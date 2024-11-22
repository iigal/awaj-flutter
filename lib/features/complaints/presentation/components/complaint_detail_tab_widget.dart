import 'package:awaj/features/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/complaints/models/complaints_comment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ComplaintDetailTabWidget extends StatefulWidget {
  final int complaintId;
  const ComplaintDetailTabWidget({super.key, required this.complaintId});

  @override
  State<ComplaintDetailTabWidget> createState() => _ComplaintDetailTabWidgetState();
}

class _ComplaintDetailTabWidgetState extends State<ComplaintDetailTabWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TabList(
          index: index,
          children: [
            TabButton(
              child: const Row(
                children: [Icon(Icons.comment_outlined), Text("15")],
              ),
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            TabButton(
              child: const Row(
                children: [Icon(Icons.image), Text("15")],
              ),
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
          ],
        ),
        const Gap(16),
        Expanded(
          child: IndexedStack(
            index: index,
            children: [
              CommentContainer(
                id: widget.complaintId,
              ),
              const ImageContainer(),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CommentContainer extends ConsumerWidget {
  final int id;
  const CommentContainer({super.key, required this.id});

  List<TreeItem> commentReply(List<ComplaintsComment> data) {
    List<TreeItem> comments = [];
    for (int i = 0; i < data.length; i++) {
      var tcomment = data[i];
      comments.add(
        TreeItem(
          data: tcomment.message,
          children: (tcomment.reply!.isNotEmpty) ? tcomment.reply!.map((element) => TreeItem(data: element.message)).toList() : [],
        ),
      );
    }
    return comments;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(complaintsCommentNotifierProvider(id)).when(
          data: (data) {
            List<TreeItem> treeItem = commentReply(data);

            return TreeView(
              recursiveSelection: true,
              nodes: treeItem,
              expandIcon: true,
              builder: (context, node) {
                return TreeItemView(
                  expandable: true,
                  onPressed: () {},
                  onExpand: TreeView.defaultItemExpandHandler(treeItem, node, (value) {
                    // setState(() {
                    //   treeItems = value;
                    // });
                  }),
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Avatar(initials: "AS"),
                        const Gap(4),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextArea(
                                initialValue: node.data,
                                expandableHeight: true,
                                expandableWidth: false,
                                filled: false,
                                readOnly: true,
                              ),
                              const Gap(2),
                              Row(
                                children: [
                                  LinkButton(
                                    child: const Text("Reply"),
                                    onPressed: () {},
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          error: (err, stack) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        );
  }
}

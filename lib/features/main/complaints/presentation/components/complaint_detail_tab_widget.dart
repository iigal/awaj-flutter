import 'package:awaj/core/extensions.dart';
import 'package:awaj/features/main/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/main/complaints/models/complaints_comment.dart';
import 'package:awaj/features/main/complaints/presentation/components/complaint_comment_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ComplaintDetailTabWidget extends StatefulWidget {
  final Complaints complaint;
  const ComplaintDetailTabWidget({super.key, required this.complaint});

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
          onChanged: (value) {},
          index: index,
          children: [
            TabChildWidget(
              child: TabButton(
                child: const Icon(Icons.comment_outlined),
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
            ),
            TabChildWidget(
              child: TabButton(
                child: const Icon(Icons.image),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
              ),
            ),
          ],
        ),
        const Gap(16),
        Expanded(
          child: IndexedStack(
            index: index,
            children: [
              CommentContainer(
                complaintId: widget.complaint.id,
              ),
              ImageContainer(images: widget.complaint.images),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  final List<String>? images;
  const ImageContainer({super.key, this.images});

  @override
  Widget build(BuildContext context) {
    if (images != null && images!.isNotEmpty) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: images!.length,
        itemBuilder: (context, index) {
          return Image.network(images![index], fit: BoxFit.contain);
        },
      );
    }
    return Container();
  }
}

class CommentContainer extends ConsumerWidget {
  final int complaintId;
  const CommentContainer({super.key, required this.complaintId});

  List<TreeItem> commentReply(List<ComplaintsComment> data) {
    List<TreeItem> comments = [];
    for (int i = 0; i < data.length; i++) {
      var tcomment = data[i];
      comments.add(
        TreeItem(
          expanded: true,
          data: tcomment.message,
          children: (tcomment.reply!.isNotEmpty)
              ? tcomment.reply!.map((element) => TreeItem(expanded: false, data: element.message)).toList()
              : [],
        ),
      );
    }
    return comments;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(complaintsCommentNotifierProvider(complaintId)).when(
          data: (data) {
            List<TreeItem> treeItem = commentReply(data);
            return Stack(
              children: [
                Positioned.fill(
                  child: TreeView(
                    nodes: treeItem,
                    branchLine: BranchLine.path,
                    builder: (context, node) {
                      return TreeItemView(
                        onPressed: () {},
                        onExpand: TreeView.defaultItemExpandHandler(treeItem, node, (value) {}),
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
                                    if (node.expanded) ...[
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
                                            onPressed: () => bottomSheetBuilder(
                                                context,
                                                ComplaintCommentWidget(
                                                  complaintId: complaintId,
                                                  complaintCommentId: data[treeItem.indexOf(node)].id,
                                                )),
                                          )
                                        ],
                                      )
                                    ] else ...[
                                      TextArea(
                                        initialValue: node.data,
                                        expandableHeight: true,
                                        expandableWidth: false,
                                        filled: false,
                                        readOnly: true,
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 6,
                  right: 6,
                  child: IconButton.primary(
                    size: ButtonSize.large,
                    icon: const Icon(Icons.add),
                    onPressed: () => bottomSheetBuilder(
                        context,
                        ComplaintCommentWidget(
                          complaintId: complaintId,
                        )),
                  ),
                ),
              ],
            );
          },
          error: (err, stack) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        );
  }
}

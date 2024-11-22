import 'package:awaj/features/complaints/api/complaints_repository.dart';
import 'package:awaj/features/complaints/api/notifier/complaints_notifier.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/api/notifier/categories_notifier.dart';
import 'package:awaj/features/shared_components/labelled_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ComplaintFormWidget extends ConsumerStatefulWidget {
  final Map<String, dynamic>? updateValues;

  const ComplaintFormWidget({super.key, this.updateValues});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ComplaintFormWidgetState();
}

class _ComplaintFormWidgetState extends ConsumerState<ComplaintFormWidget> {
  final _titleKey = const FormKey<String>('title');
  final _descriptionKey = const FormKey<String>('description');
  final _categoryKey = const FormKey<Categories>('category');
  final _subCategoryKey = const FormKey<Categories?>('subcategory');
  FormController controller = FormController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  List<XFile> imageFiles = [];

  bool isUpdate = false;
  bool isSaving = false;
  Categories? selectedCategory;
  Categories? selectedSubCategory;
  @override
  void initState() {
    super.initState();
    if (widget.updateValues != null) {
      isUpdate = true;
    }
    selectedCategory = null;
    selectedSubCategory = null;
  }

  void createComplaint(Map<FormKey<dynamic>, dynamic> values) async {
    if (selectedCategory == null) {
      return;
    }
    setState(() {
      isSaving = true;
    });

    try {
      var complaintReq = ComplaintsRequest(
          title: values[_titleKey],
          description: values[_descriptionKey],
          userId: 1,
          categoryId: (values[_categoryKey] as Categories).id,
          subCategoryId: (values[_subCategoryKey] as Categories?)?.id,
          status: "pending");
      await ref.read(complaintsRepositoryProvider).registerComplaint(complaintReq);
      ref.invalidate(complaintsNotifierProvider);
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
            onSubmit: (context, values) => createComplaint(values),
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
                  key: _titleKey,
                  label: const Text("Title of complaint *"),
                  validator: const NotEmptyValidator(),
                  child: const TextField(
                    placeholder: "Title of complaint",
                  ),
                ),
                FormField<String>(
                  key: _descriptionKey,
                  label: const Text("Description"),
                  child: const TextField(
                    placeholder: "Add a description of your complaint",
                  ),
                ),
                FormField<Categories>(
                  key: _categoryKey,
                  label: const Text("Area of Complaint"),
                  validator: const NonNullValidator(),
                  child: Select<Categories>(
                    value: selectedCategory,
                    autoClosePopover: true,
                    itemBuilder: (context, item) {
                      return Text(item.title);
                    },
                    searchFilter: (item, query) {
                      return item.title.toLowerCase().contains(query.toLowerCase()) ? 1 : 0;
                    },
                    popupConstraints: const BoxConstraints(
                      maxHeight: 300,
                      maxWidth: 200,
                    ),
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value;
                      });
                    },
                    children: ref.watch(categoriesNotifierProvider).maybeWhen(
                          data: (data) => [
                            SelectGroup(
                              children: data
                                  .map(
                                    (element) => SelectItemButton(
                                      value: element,
                                      child: Text(element.title),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                          error: (err, stack) => [],
                          orElse: () => [],
                        ),
                  ),
                ),

                LabelledFormWidget(
                    label: "Sub-category",
                    child: Builder(builder: (context) {
                      if (selectedCategory == null) {
                        return const TextField(
                          enabled: false,
                          placeholder: "Select a category first",
                          readOnly: true,
                          trailing: Icon(Icons.arrow_drop_down),
                        );
                      } else if (selectedCategory!.children?.isEmpty ?? false) {
                        return const TextField(
                          enabled: false,
                          placeholder: "No sub categories",
                          readOnly: true,
                          trailing: Icon(Icons.arrow_drop_down),
                        );
                      }
                      return FormField<Categories?>(
                        label: Container(),
                        key: _subCategoryKey,
                        child: Select<Categories?>(
                          value: selectedSubCategory,
                          autoClosePopover: true,
                          itemBuilder: (context, item) {
                            return Text(item!.title);
                          },
                          searchFilter: (item, query) {
                            return item!.title.toLowerCase().contains(query.toLowerCase()) ? 1 : 0;
                          },
                          popupConstraints: const BoxConstraints(
                            maxHeight: 300,
                            maxWidth: 200,
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedSubCategory = value;
                            });
                          },
                          children: [
                            SelectGroup(
                              children: selectedCategory!.children!
                                  .map((element) => SelectItemButton(value: element, child: Text(element.title)))
                                  .toList(),
                            ),
                          ],
                        ),
                      );
                    })),

                LabelledFormWidget(
                  label: "Upload Images",
                  child: TextField(
                    placeholder: "Select images",
                    readOnly: true,
                    onTap: () async {
                      try {
                        ImagePicker picker = ImagePicker();
                        imageFiles = await picker.pickMultiImage();
                      } catch (err) {}
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(height: 100, child: Text("Image controller here")),
                // Expanded(child: Container()),
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

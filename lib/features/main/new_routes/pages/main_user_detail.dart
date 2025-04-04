import 'package:awaj/features/main/new_routes/store/main_auth_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:easy_localization/easy_localization.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  final TextEditingController _nameController = TextEditingController();
  String? _selectedGender;
  DateTime? dobValue;

  void _saveUserDetails() async {
    await LocalStorage.saveUserDetails(_nameController.text, dobValue.toString(), _selectedGender!);
    // context.go('/main/menu');
    GoRouter.of(context).go('/main/menu');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          leading: [
            IconButton.text(
              icon: Icon(Icons.arrow_back),
              onPressed: () => GoRouter.of(context).pop(),
            ),
          ],
        )
      ],
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(20),
            Text(context.tr('Enter your Details as stated below')).large().semiBold(),
            Gap(32),
            FormField(
              key: FormKey('name'),
              label: Text(context.tr('Full Name')),
              validator: const LengthValidator(min: 8),
              // showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: TextField(
                controller: _nameController,
                placeholder: Text(context.tr('Enter your full name')),
              ),
            ),
            Gap(18),
            FormField(
              key: FormKey('dob'),
              label: Text(context.tr("Enter your date of birth (in AD))")),
              child: DatePicker(
                value: dobValue,
                mode: PromptMode.dialog,
                stateBuilder: (date) {
                  if (date.isAfter(DateTime.now())) {
                    return DateState.disabled;
                  }
                  return DateState.enabled;
                },
                onChanged: (value) {
                  setState(() {
                    dobValue = value;
                  });
                },
              ),
            ),
            Gap(18),
            FormField(
              key: FormKey('gender'),
              label: Text(context.tr('Select your Gender')),
              // validator: const LengthValidator(min: 8),
              // showErrors: const {FormValidationMode.changed, FormValidationMode.submitted},
              child: RadioGroup<String>(
                value: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioItem(
                      value: "Male",
                      trailing: Text(context.tr('Male')),
                    ),
                    RadioItem(
                      value: "Female",
                      trailing: Text(context.tr('Female')),
                    ),
                    RadioItem(
                      value: "Others",
                      trailing: Text(context.tr('Others')),
                    ),
                  ],
                ),
              ),
            ),
            Gap(18),
            Center(
              child: PrimaryButton(
                onPressed: _saveUserDetails,
                child: Text(context.tr('Save & Continue')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:shadcn_flutter/shadcn_flutter.dart';

Widget buildToast(BuildContext context, ToastOverlay overlay, {String? message}) {
  return SurfaceCard(
    child: Basic(
      title: const Text('Error'),
      subtitle: Text(message ?? 'Something Went Wrong'),
      trailing: PrimaryButton(
          size: ButtonSize.small,
          onPressed: () {
            overlay.close();
          },
          child: const Text('close')),
      trailingAlignment: Alignment.center,
    ),
  );
}

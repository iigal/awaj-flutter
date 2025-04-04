import 'package:easy_localization/easy_localization.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

Widget buildToast(BuildContext context, ToastOverlay overlay, {String? message}) {
  return SurfaceCard(
    child: Basic(
      title: Text(context.tr('Error')),
      subtitle: Text(context.tr(message ?? 'Something Went Wrong')),
      trailing: PrimaryButton(
          size: ButtonSize.small,
          onPressed: () {
            overlay.close();
          },
          child: Text(context.tr('close'))),
      trailingAlignment: Alignment.center,
    ),
  );
}

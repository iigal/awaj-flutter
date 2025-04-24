import 'package:shadcn_flutter/shadcn_flutter.dart';

extension StringCasingExtension on String {
  String get toCapitalized => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String get toTitleCase => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized).join(' ');
}

Widget showProgressStatusBadge(String status) {
  return switch (status.toLowerCase()) {
    "pending" => SecondaryBadge(
        child: Text(status.toCapitalized),
      ),
    "progress" => PrimaryBadge(
        child: Text(status.toCapitalized),
      ),
    "completed" => PrimaryBadge(
        child: Text(status.toCapitalized),
      ),
    "cancelled" => DestructiveBadge(
        child: Text(status.toCapitalized),
      ),
    _ => PrimaryBadge(
        child: Text(status.toCapitalized),
      ),
  };
}

void bottomSheetBuilder(BuildContext context, Widget child) {
  openDrawer(
    context: context,
    builder: (BuildContext context) => child,
    position: OverlayPosition.bottom,
  );
}

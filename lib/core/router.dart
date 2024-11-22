import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:awaj/features/complaints/presentation/complaint_detail_page.dart';
import 'package:awaj/features/home/home.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final gorouter = GoRouter(routes: routes);

final List<RouteBase> routes = [
  GoRoute(path: "/", builder: (context, state) => HomeScreen(), routes: [
    GoRoute(
      path: "complaint-detail",
      name: "complaint-detail",
      builder: (context, state) => ComplaintDetailPage(
        complaint: state.extra as Complaints?,
      ),
    )
  ])
];

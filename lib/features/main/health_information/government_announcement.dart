// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:awaj/db.dart';
import 'package:awaj/features/main/app_bar.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AnnouncementsPage extends StatefulWidget {
  final List<Announcement> announcements;

  const AnnouncementsPage({super.key, required this.announcements});

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  List<Announcement> _filteredAnnouncements = [];
  List<Announcement> announcements = [];
  final TextEditingController _searchController = TextEditingController();
  AnnouncementFilter _currentFilter = AnnouncementFilter.all;

  bool isLoadingData = true;

  subscribeAnnouncements() {
    pocketBaseDB.collection('app_gov_announcements').subscribe('*', (e) {
      setState(() {
        isLoadingData = true;
      });
      if (e.record != null) {
        setState(() {
          isLoadingData = false;
        });
      }
    });
  }

  Future<void> fetchAllAnnouncements() async {
    try {
      final records = await pocketBaseDB.collection('app_gov_announcements').getFullList();
      if (records.isEmpty) {
        announcements = [];
        return;
      }
      announcements = records.map((element) => Announcement.fromJson(element.data)).toList();
      _filteredAnnouncements = announcements;
    } catch (err) {
      print(err);
      rethrow;
    }
    setState(() {
      isLoadingData = false;
    });
  }

  @override
  void initState() {
    super.initState();
    isLoadingData = true;
    subscribeAnnouncements();
    fetchAllAnnouncements();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    isLoadingData = true;
    super.dispose();
  }

  void _onSearchChanged() {
    _applyFilters();
  }

  void _applyFilters() {
    setState(() {
      // _filteredAnnouncements = widget.announcements.where((announcement) {
      //   final matchesSearch = announcement.title.toLowerCase().contains(_searchController.text.toLowerCase()) ||
      //       announcement.description.toLowerCase().contains(_searchController.text.toLowerCase());

      //   final matchesFilter = _currentFilter == AnnouncementFilter.all ||
      //       (_currentFilter == AnnouncementFilter.urgent && announcement.isUrgent) ||
      //       (_currentFilter == AnnouncementFilter.recent && announcement.date.isAfter(DateTime.now().subtract(const Duration(days: 7))));

      //   return matchesSearch && matchesFilter;
      // }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [AppBarComponent()],
      child: Column(
        children: [
          // Search and Filter Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Search Input
                TextField(
                  controller: _searchController,
                  placeholder: Text(
                    'Search announcements...',
                  ),
                ),
                const Gap(12),
                // Filter Chips
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // material.FilterChip(
                      //   label: Text(context.tr('All')),
                      //   selected: _currentFilter == AnnouncementFilter.all,
                      //   onSelected: (_) {
                      //     setState(() {
                      //       _currentFilter = AnnouncementFilter.all;
                      //       _applyFilters();
                      //     });
                      //   },
                      // ),
                      // const Gap(8),
                      // material.FilterChip(
                      //   label: Text(context.tr('Urgent')),
                      //   selected: _currentFilter == AnnouncementFilter.urgent,
                      //   onSelected: (_) {
                      //     setState(() {
                      //       _currentFilter = AnnouncementFilter.urgent;
                      //       _applyFilters();
                      //     });
                      //   },
                      // ),
                      // const Gap(8),
                      // material.FilterChip(
                      //   label: Text(context.tr('Recent')),
                      //   selected: _currentFilter == AnnouncementFilter.recent,
                      //   onSelected: (_) {
                      //     setState(() {
                      //       _currentFilter = AnnouncementFilter.recent;
                      //       _applyFilters();
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Results Count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  '${_filteredAnnouncements.length} ${_filteredAnnouncements.length == 1 ? 'announcement' : 'announcements'} found',
                ).small().muted(),
              ],
            ),
          ),
          const Gap(8),
          // Announcements List

          Expanded(
            child: isLoadingData
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.announcement_outlined, size: 48).muted(),
                        const Gap(16),
                        Text(context.tr('No announcements found')).muted(),
                        if (_searchController.text.isNotEmpty || _currentFilter != AnnouncementFilter.all)
                          TextButton(
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                _currentFilter = AnnouncementFilter.all;
                                _filteredAnnouncements = widget.announcements;
                              });
                            },
                            child: Text(context.tr('Clear filters')),
                          ),
                      ],
                    ),
                  )
                : Card(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: _filteredAnnouncements.length,
                      separatorBuilder: (_, __) => const Gap(8),
                      itemBuilder: (context, index) {
                        final announcement = _filteredAnnouncements[index];
                        return _buildAnnouncementCard(announcement, context);
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementCard(Announcement announcement, BuildContext context) {
    return Button.secondary(
      // borderRadius: BorderRadius.circular(12),
      onPressed: () => context.go("/main/menu/announcements/${announcement.collectionId}", extra: announcement),

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(context.tr(announcement.title)).large().bold(),
                      const Gap(4),
                      Text(context.tr(announcement.fullSummary)).muted(),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
            const Gap(12),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16).muted(),
                const Gap(4),
                Text(
                  DateFormat('MMM d, yyyy').format(announcement.created),
                ).small().muted(),
                if (announcement.created.isAfter(DateTime.now().subtract(const Duration(days: 3))))
                  SecondaryBadge(
                    child: Text(context.tr('NEW')),
                  ),
                const Spacer(),
                if (announcement.priority.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: DestructiveBadge(
                      child: Text(context.tr('URGENT')),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum AnnouncementFilter { all, urgent, recent }

class AnnouncementDetailPage extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementDetailPage({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [AppBarComponent()],
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (announcement.priority.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: DestructiveBadge(
                  child: Text(context.tr('URGENT ALERT')),
                ),
              ),
            Text(context.tr(announcement.title)).xLarge().bold(),
            const Gap(8),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16).muted(),
                const Gap(4),
                Text(
                  DateFormat('MMMM d, yyyy').format(announcement.created),
                ).muted(),
              ],
            ),
            const Divider().withPadding(vertical: 16),
            Text(context.tr(announcement.content)),
            const Gap(24),
            if (announcement.priority.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(context.tr('Immediate Action Required')).bold(),
                      const Gap(8),
                      Text(context.tr('Please follow all instructions carefully and contact authorities if needed.')),
                      const Gap(12),
                      Button.destructive(
                        onPressed: () {
                          // Implement emergency action
                        },
                        child: Text(context.tr('Emergency Contacts')),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

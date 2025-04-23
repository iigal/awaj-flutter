// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:awaj/db.dart';
import 'package:awaj/features/main/health_information/models/government_announcement_model.dart';
import 'package:awaj/features/shared_components/app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  List<Announcement> _filteredAnnouncements = [];
  List<Announcement> announcements = [];
  AnnouncementFilter _currentFilter = AnnouncementFilter.all;
  final int perPage = 10;
  int page = 1;

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
    setState(() {
      isLoadingData = true;
    });
    try {
      final records = await pocketBaseDB.collection('dhapp_tbl_announcements').getList(page: page, perPage: perPage, sort: "-created");
      if (records.totalItems > 0) page++;
      announcements = records.items.map((element) => Announcement.fromJson(element.data)).toList();
      _filteredAnnouncements = [..._filteredAnnouncements, ...announcements];
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
    page = 1;
    subscribeAnnouncements();
    fetchAllAnnouncements();
  }

  @override
  void dispose() {
    isLoadingData = true;
    super.dispose();
  }

  void _applyFilters() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBarWidget(
          title: context.tr('Announcements'),
        )
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Filter Chips
            Row(
              children: [
                Chip(
                  style: _currentFilter == AnnouncementFilter.all ? const ButtonStyle.primary() : null,
                  child: Text(context.tr('All')),
                  onPressed: () {
                    setState(() {
                      _currentFilter = AnnouncementFilter.all;
                      _applyFilters();
                    });
                  },
                ),
                Gap(6),
                Chip(
                  style: _currentFilter == AnnouncementFilter.urgent ? const ButtonStyle.primary() : null,
                  child: Text(context.tr('Urgent')),
                  onPressed: () {
                    setState(() {
                      _currentFilter = AnnouncementFilter.urgent;
                      _applyFilters();
                    });
                  },
                ),
                Gap(6),
                Chip(
                  style: _currentFilter == AnnouncementFilter.recent ? const ButtonStyle.primary() : null,
                  child: Text(context.tr('Recent')),
                  onPressed: () {
                    setState(() {
                      _currentFilter = AnnouncementFilter.recent;
                      _applyFilters();
                    });
                  },
                ),
              ],
            ),
            const Gap(12),
            Row(
              children: [
                Text(
                  '${_filteredAnnouncements.length} ${_filteredAnnouncements.length == 1 ? 'announcement' : 'announcements'} found',
                ).small().muted(),
              ],
            ),
            const Gap(6),
            Divider(),
            const Gap(6),
            if (isLoadingData)
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.announcement_outlined, size: 48).muted(),
                    const Gap(16),
                    Text(context.tr('NoAnnouncementsFound')).muted(),
                    if (_currentFilter != AnnouncementFilter.all)
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _currentFilter = AnnouncementFilter.all;
                          });
                        },
                        child: Text(context.tr('Clear filters')),
                      ),
                  ],
                ),
              )
            else
              Expanded(
                child: RefreshTrigger(
                  onRefresh: () async {
                    await Future.delayed(
                      const Duration(seconds: 1),
                      () => fetchAllAnnouncements(),
                    );
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(4),
                    itemCount: _filteredAnnouncements.length,
                    separatorBuilder: (context, index) => const Gap(8),
                    itemBuilder: (context, index) {
                      final announcement = _filteredAnnouncements[index];
                      return AnnouncementCard(announcement: announcement);
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AnnouncementCard extends StatelessWidget {
  final Announcement announcement;
  const AnnouncementCard({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Button.card(
      onPressed: () => context.go("/main/announcements/${announcement.collectionId}", extra: announcement),
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
              if (announcement.priority.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: DestructiveBadge(
                    child: Text(context.tr('Urgent')),
                  ),
                ),
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
              Gap(8),
              if (announcement.created.isAfter(DateTime.now().subtract(const Duration(hours: 12))))
                SecondaryBadge(
                  child: Text(context.tr('NEW')),
                ),
              const Spacer(),
              Row(
                children: [
                  Text(context.tr("ReadMore")),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ],
          ),
        ],
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

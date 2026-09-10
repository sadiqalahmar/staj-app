import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'icon': Icons.message,
        'title': 'New message from Ahmed',
        'subtitle': 'About Luxury Apartment',
        'time': '2 min ago',
      },
      {
        'icon': Icons.favorite,
        'title': 'Your favorite dropped in price',
        'subtitle': 'Beautiful Villa - ₺950,000 → ₺900,000',
        'time': '1 hour ago',
      },
      {
        'icon': Icons.check_circle,
        'title': 'Listing approved',
        'subtitle': 'Your listing is now live',
        'time': '3 hours ago',
      },
      {
        'icon': Icons.trending_up,
        'title': 'Your listing is trending',
        'subtitle': 'Great views this week',
        'time': '1 day ago',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notif = notifications[index];
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primaryGold.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    notif['icon'] as IconData,
                    color: AppColors.primaryGold,
                  ),
                ),
                title: Text(notif['title'] as String,
                    style: AppTypography.titleSmall),
                subtitle: Text(notif['subtitle'] as String,
                    style: AppTypography.bodySmall),
                trailing: Text(notif['time'] as String,
                    style: AppTypography.labelSmall),
              ),
              Divider(color: Theme.of(context).dividerColor),
            ],
          );
        },
      ),
    );
  }
}

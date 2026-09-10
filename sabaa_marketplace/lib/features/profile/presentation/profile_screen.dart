import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.primaryGold.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: AppColors.primaryGold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Ahmed Mohamed', style: AppTypography.headlineMedium),
                  const SizedBox(height: 4),
                  Text('@ahmedmohamed', style: AppTypography.bodyMedium),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star_rounded, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text('4.8 (124 reviews)',
                          style: AppTypography.labelMedium),
                      const SizedBox(width: 8),
                      Icon(Icons.verified, color: AppColors.success, size: 20),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatItem('24', 'Listings'),
                      _buildStatItem('156', 'Followers'),
                      _buildStatItem('89', 'Reviews'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Theme.of(context).dividerColor),
            _buildMenuItem(
              context,
              'My Listings',
              Icons.list,
              () => context.go('/my-listings'),
            ),
            _buildMenuItem(
              context,
              'Favorites',
              Icons.favorite,
              () => context.go('/favorites'),
            ),
            _buildMenuItem(
              context,
              'Messages',
              Icons.chat,
              () => context.go('/chat'),
            ),
            _buildMenuItem(
              context,
              'Saved Searches',
              Icons.search,
              () {},
            ),
            _buildMenuItem(
              context,
              'Reviews',
              Icons.rate_review,
              () {},
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => context.go('/login'),
                  child: const Text('Logout'),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(count, style: AppTypography.headlineMedium),
        Text(label, style: AppTypography.labelSmall),
      ],
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon,
      VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryGold),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

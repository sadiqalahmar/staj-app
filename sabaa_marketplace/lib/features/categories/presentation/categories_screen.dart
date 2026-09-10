import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Real Estate', 'icon': Icons.home, 'count': 2341},
      {'name': 'Cars & Vehicles', 'icon': Icons.directions_car, 'count': 1523},
      {'name': 'Electronics', 'icon': Icons.smartphone, 'count': 3412},
      {'name': 'Computers', 'icon': Icons.computer, 'count': 892},
      {'name': 'Furniture', 'icon': Icons.chair, 'count': 1204},
      {'name': 'Fashion', 'icon': Icons.shopping_bag, 'count': 2156},
      {'name': 'Services', 'icon': Icons.build, 'count': 1087},
      {'name': 'Food', 'icon': Icons.restaurant, 'count': 654},
      {'name': 'Travel', 'icon': Icons.flight, 'count': 432},
      {'name': 'Sports', 'icon': Icons.sports_soccer, 'count': 789},
      {'name': 'Baby & Kids', 'icon': Icons.child_friendly, 'count': 567},
      {'name': 'Beauty', 'icon': Icons.face, 'count': 445},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          return GestureDetector(
            onTap: () => context.go('/category/${cat['name']}'),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primaryGold.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        cat['icon'] as IconData,
                        color: AppColors.primaryGold,
                        size: 32,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      cat['name'] as String,
                      textAlign: TextAlign.center,
                      style: AppTypography.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${cat['count']} listings',
                      style: AppTypography.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

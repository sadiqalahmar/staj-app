import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  final List<String> recentSearches = [
    'Apartment Istanbul',
    'iPhone 15',
    'Used Car',
    'Furniture',
  ];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search listings...',
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white10,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ),
      body: _searchController.text.isEmpty
          ? _buildEmptySearch()
          : _buildSearchResults(),
    );
  }

  Widget _buildEmptySearch() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Searches',
            style: AppTypography.titleMedium,
          ),
          const SizedBox(height: 12),
          ...recentSearches.map(
            (search) => ListTile(
              leading: const Icon(Icons.history),
              title: Text(search),
              onTap: () => _searchController.text = search,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Popular Searches',
            style: AppTypography.titleMedium,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: ['Apartment', 'Car', 'Phone', 'Furniture', 'Services']
                .map(
                  (tag) => GestureDetector(
                    onTap: () => _searchController.text = tag,
                    child: Chip(
                      label: Text(tag),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.primaryGold.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.image, color: AppColors.primaryGold),
          ),
          title: Text('Luxury Apartment in Besiktas'),
          subtitle: Text('₺850,000 • Istanbul'),
          trailing: Icon(Icons.favorite_outline),
          onTap: () => context.go('/listing/123'),
        ),
      ),
    );
  }
}

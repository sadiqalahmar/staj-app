import 'package:flutter/material.dart';

// Placeholder screens for remaining features
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Sign Up')),
        body: const Center(child: Text('Sign Up Screen')),
      );
}

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Forgot Password')),
        body: const Center(child: Text('Forgot Password Screen')),
      );
}

class CategoryDetailsScreen extends StatelessWidget {
  final String categoryId;

  const CategoryDetailsScreen({Key? key, required this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Category: $categoryId')),
        body: const Center(child: Text('Category Details Screen')),
      );
}

class SellerProfileScreen extends StatelessWidget {
  final String sellerId;

  const SellerProfileScreen({Key? key, required this.sellerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Seller: $sellerId')),
        body: const Center(child: Text('Seller Profile Screen')),
      );
}

class EditListingScreen extends StatelessWidget {
  final String listingId;

  const EditListingScreen({Key? key, required this.listingId})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Edit Listing: $listingId')),
        body: const Center(child: Text('Edit Listing Screen')),
      );
}

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Location')),
        body: const Center(child: Text('Location Screen')),
      );
}

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Reviews')),
        body: const Center(child: Text('Reviews Screen')),
      );
}

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Payments')),
        body: const Center(child: Text('Payments Screen')),
      );
}

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Reports')),
        body: const Center(child: Text('Reports Screen')),
      );
}


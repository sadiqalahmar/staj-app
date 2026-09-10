import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sabaa_marketplace/features/splash/presentation/splash_screen.dart';
import 'package:sabaa_marketplace/features/onboarding/presentation/onboarding_screen.dart';
import 'package:sabaa_marketplace/features/auth/presentation/login_screen.dart';
import 'package:sabaa_marketplace/features/home/presentation/home_screen.dart';
import 'package:sabaa_marketplace/features/categories/presentation/categories_screen.dart';
import 'package:sabaa_marketplace/features/search/presentation/search_screen.dart';
import 'package:sabaa_marketplace/features/listing_details/presentation/listing_details_screen.dart';
import 'package:sabaa_marketplace/features/create_listing/presentation/create_listing_screen.dart';
import 'package:sabaa_marketplace/features/favorites/presentation/favorites_screen.dart';
import 'package:sabaa_marketplace/features/chat/presentation/chat_screen.dart';
import 'package:sabaa_marketplace/features/notifications/presentation/notifications_screen.dart';
import 'package:sabaa_marketplace/features/profile/presentation/profile_screen.dart';
import 'package:sabaa_marketplace/features/settings/presentation/settings_screen.dart';
import 'package:sabaa_marketplace/features/listings/presentation/my_listings_screen.dart';
import 'package:sabaa_marketplace/features/placeholder_screens.dart';

enum AuthStatus { initial, authenticated, unauthenticated, guest }

final authStatusProvider = StateProvider<AuthStatus>((ref) {
  return AuthStatus.guest;
});

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: 'signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        name: 'forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/categories',
        name: 'categories',
        builder: (context, state) => const CategoriesScreen(),
      ),
      GoRoute(
        path: '/category/:id',
        name: 'category-details',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return CategoryDetailsScreen(categoryId: id);
        },
      ),
      GoRoute(
        path: '/search',
        name: 'search',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/listing/:id',
        name: 'listing-details',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return ListingDetailsScreen(listingId: id);
        },
      ),
      GoRoute(
        path: '/create-listing',
        name: 'create-listing',
        builder: (context, state) => const CreateListingScreen(),
      ),
      GoRoute(
        path: '/edit-listing/:id',
        name: 'edit-listing',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return EditListingScreen(listingId: id);
        },
      ),
      GoRoute(
        path: '/favorites',
        name: 'favorites',
        builder: (context, state) => const FavoritesScreen(),
      ),
      GoRoute(
        path: '/chat',
        name: 'chat',
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: '/chat/:id',
        name: 'chat-details',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return ChatDetailsScreen(conversationId: id);
        },
      ),
      GoRoute(
        path: '/notifications',
        name: 'notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/profile/:id',
        name: 'seller-profile',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return SellerProfileScreen(sellerId: id);
        },
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/my-listings',
        name: 'my-listings',
        builder: (context, state) => const MyListingsScreen(),
      ),
      GoRoute(
        path: '/location',
        name: 'location',
        builder: (context, state) => const LocationScreen(),
      ),
      GoRoute(
        path: '/reviews',
        name: 'reviews',
        builder: (context, state) => const ReviewsScreen(),
      ),
      GoRoute(
        path: '/payments',
        name: 'payments',
        builder: (context, state) => const PaymentsScreen(),
      ),
      GoRoute(
        path: '/reports',
        name: 'reports',
        builder: (context, state) => const ReportsScreen(),
      ),
    ],
  );
});

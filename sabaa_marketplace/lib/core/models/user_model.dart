class User {
  final String id;
  final String email;
  final String? phoneNumber;
  final String name;
  final String? username;
  final String? profileImage;
  final String? bio;
  final bool isVerified;
  final double rating;
  final int reviewCount;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? location;
  final bool isOnline;
  final List<String> blockedUsers;

  User({
    required this.id,
    required this.email,
    this.phoneNumber,
    required this.name,
    this.username,
    this.profileImage,
    this.bio,
    this.isVerified = false,
    this.rating = 0,
    this.reviewCount = 0,
    required this.createdAt,
    this.updatedAt,
    this.location,
    this.isOnline = false,
    this.blockedUsers = const [],
  });

  User copyWith({
    String? id,
    String? email,
    String? phoneNumber,
    String? name,
    String? username,
    String? profileImage,
    String? bio,
    bool? isVerified,
    double? rating,
    int? reviewCount,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? location,
    bool? isOnline,
    List<String>? blockedUsers,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      name: name ?? this.name,
      username: username ?? this.username,
      profileImage: profileImage ?? this.profileImage,
      bio: bio ?? this.bio,
      isVerified: isVerified ?? this.isVerified,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      location: location ?? this.location,
      isOnline: isOnline ?? this.isOnline,
      blockedUsers: blockedUsers ?? this.blockedUsers,
    );
  }
}

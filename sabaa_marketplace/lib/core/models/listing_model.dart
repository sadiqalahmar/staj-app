class Listing {
  final String id;
  final String title;
  final String description;
  final double price;
  final String currency;
  final String category;
  final String subcategory;
  final String sellerId;
  final String sellerName;
  final String? sellerImage;
  final double? sellerRating;
  final bool sellerVerified;
  final List<String> images;
  final String thumbnail;
  final String condition;
  final String listingType;
  final String location;
  final String city;
  final double? latitude;
  final double? longitude;
  final int viewCount;
  final int favoriteCount;
  final int messageCount;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final bool isActive;
  final bool isSold;
  final bool isPremium;
  final Map<String, dynamic>? attributes;

  Listing({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.currency,
    required this.category,
    required this.subcategory,
    required this.sellerId,
    required this.sellerName,
    this.sellerImage,
    this.sellerRating = 0,
    this.sellerVerified = false,
    required this.images,
    required this.thumbnail,
    required this.condition,
    required this.listingType,
    required this.location,
    required this.city,
    this.latitude,
    this.longitude,
    this.viewCount = 0,
    this.favoriteCount = 0,
    this.messageCount = 0,
    required this.createdAt,
    this.updatedAt,
    this.isActive = true,
    this.isSold = false,
    this.isPremium = false,
    this.attributes,
  });

  Listing copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? currency,
    String? category,
    String? subcategory,
    String? sellerId,
    String? sellerName,
    String? sellerImage,
    double? sellerRating,
    bool? sellerVerified,
    List<String>? images,
    String? thumbnail,
    String? condition,
    String? listingType,
    String? location,
    String? city,
    double? latitude,
    double? longitude,
    int? viewCount,
    int? favoriteCount,
    int? messageCount,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
    bool? isSold,
    bool? isPremium,
    Map<String, dynamic>? attributes,
  }) {
    return Listing(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      category: category ?? this.category,
      subcategory: subcategory ?? this.subcategory,
      sellerId: sellerId ?? this.sellerId,
      sellerName: sellerName ?? this.sellerName,
      sellerImage: sellerImage ?? this.sellerImage,
      sellerRating: sellerRating ?? this.sellerRating,
      sellerVerified: sellerVerified ?? this.sellerVerified,
      images: images ?? this.images,
      thumbnail: thumbnail ?? this.thumbnail,
      condition: condition ?? this.condition,
      listingType: listingType ?? this.listingType,
      location: location ?? this.location,
      city: city ?? this.city,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      viewCount: viewCount ?? this.viewCount,
      favoriteCount: favoriteCount ?? this.favoriteCount,
      messageCount: messageCount ?? this.messageCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isActive: isActive ?? this.isActive,
      isSold: isSold ?? this.isSold,
      isPremium: isPremium ?? this.isPremium,
      attributes: attributes ?? this.attributes,
    );
  }
}

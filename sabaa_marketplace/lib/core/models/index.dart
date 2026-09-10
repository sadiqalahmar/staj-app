class Category {
  final String id;
  final String name;
  final String icon;
  final String description;
  final List<String> subcategories;
  final int listingCount;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.subcategories,
    this.listingCount = 0,
  });
}

class Message {
  final String id;
  final String conversationId;
  final String senderId;
  final String senderName;
  final String? senderImage;
  final String receiverId;
  final String content;
  final List<String>? images;
  final DateTime sentAt;
  final bool isRead;
  final String? replyToId;

  Message({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.senderName,
    this.senderImage,
    required this.receiverId,
    required this.content,
    this.images,
    required this.sentAt,
    this.isRead = false,
    this.replyToId,
  });
}

class Conversation {
  final String id;
  final String listingId;
  final String listingTitle;
  final String listingImage;
  final String buyerId;
  final String buyerName;
  final String? buyerImage;
  final String sellerId;
  final String sellerName;
  final String? sellerImage;
  final String lastMessage;
  final DateTime lastMessageTime;
  final int unreadCount;
  final bool isBlocked;

  Conversation({
    required this.id,
    required this.listingId,
    required this.listingTitle,
    required this.listingImage,
    required this.buyerId,
    required this.buyerName,
    this.buyerImage,
    required this.sellerId,
    required this.sellerName,
    this.sellerImage,
    required this.lastMessage,
    required this.lastMessageTime,
    this.unreadCount = 0,
    this.isBlocked = false,
  });
}

class Review {
  final String id;
  final String listingId;
  final String reviewerId;
  final String reviewerName;
  final String? reviewerImage;
  final String revieweeId;
  final double rating;
  final String comment;
  final DateTime createdAt;
  final int helpfulCount;

  Review({
    required this.id,
    required this.listingId,
    required this.reviewerId,
    required this.reviewerName,
    this.reviewerImage,
    required this.revieweeId,
    required this.rating,
    required this.comment,
    required this.createdAt,
    this.helpfulCount = 0,
  });
}

class Notification {
  final String id;
  final String userId;
  final String title;
  final String message;
  final String type;
  final String? actionUrl;
  final String? image;
  final DateTime createdAt;
  final bool isRead;
  final Map<String, dynamic>? data;

  Notification({
    required this.id,
    required this.userId,
    required this.title,
    required this.message,
    required this.type,
    this.actionUrl,
    this.image,
    required this.createdAt,
    this.isRead = false,
    this.data,
  });
}

class Favorite {
  final String id;
  final String userId;
  final String listingId;
  final String listingTitle;
  final String listingImage;
  final double price;
  final String location;
  final DateTime addedAt;

  Favorite({
    required this.id,
    required this.userId,
    required this.listingId,
    required this.listingTitle,
    required this.listingImage,
    required this.price,
    required this.location,
    required this.addedAt,
  });
}

import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {

  final bool hasUnreadNotifications;
  final VoidCallback? onTap;

  const NotificationButton({
    required this.hasUnreadNotifications,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Icon(
              Icons.notifications,
              size: 24,
              color: Colors.white,
            ),
          ),
          if (hasUnreadNotifications)
            const Positioned(
              top: 4.0,
              right: 4.0,
              child: CircleAvatar(
                radius: 4.0,
                backgroundColor: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
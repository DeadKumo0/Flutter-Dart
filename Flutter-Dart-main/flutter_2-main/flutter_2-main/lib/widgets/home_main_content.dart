import 'package:flutter/material.dart';

class HomeMainContent extends StatelessWidget {
  final String imageUrlPathOne;
  final String imageUrlPathTwo;

  const HomeMainContent({
    super.key,
    required this.imageUrlPathOne,
    required this.imageUrlPathTwo,
  });

  Widget _buildCard(String url) {
    return Card(
      elevation: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ), // RoundedRectangleBorder
      shadowColor: Colors.black,
      color: Colors.greenAccent[100],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          url,
          width: 180,
          height: 180,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return SizedBox(
              width: 180,
              height: 180,
              child: Center(
                child: CircularProgressIndicator(
                  value: progress.expectedTotalBytes != null
                      ? progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes!
                      : null,
                ),
              ),
            );
          },
          errorBuilder: (_, __, ___) => const SizedBox(
            width: 180,
            height: 180,
            child: Icon(Icons.broken_image, size: 50),
          ),
        ), // ClipRRect
      ), // Image.network
    ); // Card
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCard(imageUrlPathOne),
          _buildCard(imageUrlPathTwo),
        ],
      ), // Row
    ); // Padding
  }
}

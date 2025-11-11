import 'package:flutter/material.dart';

class TextImageWidget extends StatelessWidget {
  final String description;
  const TextImageWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TextImageWidget', style: Theme.of(context).textTheme.titleLarge),
                Text('Subtitle', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            Text(description, style: Theme.of(context).textTheme.bodyMedium),
            Image.asset('assets/image/300w/C64.png', fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
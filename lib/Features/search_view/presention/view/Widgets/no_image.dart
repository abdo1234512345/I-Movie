import 'package:flutter/material.dart';

class NOImage extends StatelessWidget {
  const NOImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      color: Colors.grey,
      child: Icon(Icons.image_not_supported, color: Colors.white),
    );
  }
}

import 'package:flutter/material.dart';

class DownloadBottom extends StatelessWidget {
  const DownloadBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.download, color: Colors.white, size: 28),
        SizedBox(width: 8),
        Text(
          "Download",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}

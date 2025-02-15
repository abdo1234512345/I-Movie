import 'package:flutter/material.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/download_buttom.dart';
import 'package:movieapp/Features/MovieDetails_View/presention/Views/widgets/watch_now_buttom.dart';

class ButtomPlayandDownload extends StatelessWidget {
  const ButtomPlayandDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WatchNowBottom(),
        SizedBox(width: 16),
        DownloadBottom(),
      ],
    );
  }
}

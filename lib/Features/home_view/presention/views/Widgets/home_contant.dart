import 'package:flutter/material.dart';
import 'package:movieapp/Features/home_view/presention/views/Widgets/home_content_body.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  HomeContentState createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  bool isLoading = false;

  Future<void> _refreshContent() async {
    setState(() {
      isLoading = true;
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshContent,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: HomeContentBody()),
          ),
        ],
      ),
    );
  }
}

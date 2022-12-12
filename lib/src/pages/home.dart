import 'package:flutter/material.dart';
import 'package:flutter_inst/src/components/avatar_widget.dart';
import 'package:flutter_inst/src/components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          100,
          (index) => AvatarWidget(
            type: AvatarType.TYPE1,
            thumbPath:
            'https://cdn.searchenginejournal.com/wp-content/uploads/2022/04/reverse-image-search-627b7e49986b0-sej-760x400.png',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: ImageData(IconsPath.logo, width: 270),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ImageData(
                  IconsPath.directMessage,
                  width: 50,
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            _storyBoardList(),
            // _postList(),
          ],
        ));
  }
}

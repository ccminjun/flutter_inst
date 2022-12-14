import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_inst/src/components/avatar_widget.dart';
import 'package:flutter_inst/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Row(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE3,
          size: 45,
          nickname: '개발하는민쥰',
          thumbPath: 'https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E',
        ),
        GestureDetector(
          onTap: () {},
          child: ImageData(
            IconsPath.postMoreIcon,
            width: 30,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _header(),
          // _image(),
          // _infoCount(),
          // _infoDescription(),
          // _replyTextBtn(),
          // _dateAgo(),
        ],
      ),
    );
  }
}

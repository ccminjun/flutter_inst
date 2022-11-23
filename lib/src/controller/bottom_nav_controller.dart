import 'package:get/get.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController{
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];  // 위에 pagename을 0번째 1번째 이렇게 가져온다.
    switch(page){

      case PageName.HOME:
        // TODO: Handle this case.
        break;
      case PageName.SEARCH:
        // TODO: Handle this case.
        break;
      case PageName.UPLOAD:
        // TODO: Handle this case.
        break;
      case PageName.ACTIVITY:
        // TODO: Handle this case.
        break;
      case PageName.MYPAGE:
        // TODO: Handle this case.
        break;
    }

    pageIndex(value);
    }
  }

import 'package:flutter/material.dart';

class Search extends StatefulWidget { // 그림을 위해 Stateful로 바꿈
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}


class _SearchState extends State<Search> {

  List<List<int>> groupBox = [[],[],[]];  // 첫번째꺼가 첫번째 라인, 두번째꺼가 두번쨰 라인 이 됨

  @override
  void initState() {
    // TODO: implement initState
    super.initState();  // initState할때 바꿔줌
    for(var i=0; i<100; i++){
      groupBox[i%3].add(1);
    }
    print(groupBox);
  }
  Widget _appBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
              color: const Color(0xffefefef),
            ),
            child: Row(
              children: const [
              Icon(Icons.search),
                Text(
                  '검색',
                  style: TextStyle(fontSize: 15, color: Color(0xff838383)),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.location_pin),
        ),
      ],
    );
  }

  Widget _body(){
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
        groupBox.length,
        (index) => Expanded(
          child: Column(
            children: [
              Container(
                  height: 280,
                  color: Colors.red
              ),
              Container(
                  height: 140,
                  color: Colors.grey
              ),
            ],
          ),
        ),
        ).toList(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            Expanded(child: _body())
          ],
        ),
      ),
    );
  }
}

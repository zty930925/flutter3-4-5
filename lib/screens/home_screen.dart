import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //前一小章的Expanded可以讓元素在視窗內調整大小，擠在視窗內，但會使元素失準
      //因此，在這使用SingleChildScrollView，不可使所有元素塞入視窗，超出的部分就會以滾輪方式呈現/檢視，如此一來元素就不會失準了
      body: SingleChildScrollView(
        //在Scaffold中设置一个Column，这个Column用来放置多个Widget
        child: Column(
          // children属性是Column的子组件，內再放置Container
          //檢視效果時，需在色塊區域滾動，而非整個頁面都能測試
          children: [
            Container(
                width: 500,
                height: 500,
                color: Colors.pink,
                child: Text(
                  '名字',
                  style: TextStyle(fontSize: 30),
                )),
            Container(
                width: 500,
                height: 500,
                color: Colors.amber,
                child: Text(
                  '簡介',
                  style: TextStyle(fontSize: 30),
                )),
            Container(
                width: 500,
                height: 500,
                color: Colors.blue,
                child: Text(
                  '座右銘',
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}

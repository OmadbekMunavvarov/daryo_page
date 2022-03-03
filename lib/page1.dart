import 'package:flutter/material.dart';

import 'model.dart';

class PageNews extends StatelessWidget {
  const PageNews({Key? key}) : super(key: key);
  static List<News> list=[
    News('Masalahatlar', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/gaz.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('News', '10:30 | 09 dekabr 2021 |', '1520', 'assets/images/jang.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Masalahatlar', '17:00 | 08 fevral 2022 |', '5220', 'assets/images/study.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('My Prizident', '09:00| 10 yanvar 2021 |', '5120', 'assets/images/prizident.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Talim', '17:30 | 08 dekabr 2021 |', '3520', 'assets/images/talim.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Cars', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/tesla_X.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Foreign News', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/ferrari.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Masalahatlar', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/gaz.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Masalahatlar', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/gaz.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),
    News('Masalahatlar', '17:30 | 08 dekabr 2021 |', '520', 'assets/images/gaz.jpg', 'shu yilning dekabr oylarida davlatimizda benzin narxi keskin oshib kettganligi tufayli aholimiz hech narsa qiliwolmayapti'),

  ];

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        myNews(list[0]),
        myNews(list[1]),
        myNews(list[2]),
        myNews(list[3]),
        myNews(list[4]),
        myNews(list[5]),
        myNews(list[6]),
        myNews(list[7]),
        myNews(list[8]),
        myNews(list[9]),
      ],
    );
  }
  Widget myNews(News news){
    return InkWell(
        child: SafeArea(child:Column(
          children: [
            Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(child:Container(
                        width: 100,
                        height: 20,
                        child:  Text(news.title,style: TextStyle(color: Colors.blue,),),)),

                      SizedBox(width: 120,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(news.time,style: TextStyle(color: Colors.grey),),
                          Icon(Icons.remove_red_eye_outlined,color: Colors.blue,size: 20,),
                          Text(news.views,style: TextStyle(color:Colors.blue,fontSize: 12),),
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(news.imageUrl,width: 160,height: 160,),
                      SizedBox(width: 10,),
                      Container(
                          alignment: Alignment.topLeft,
                          height: 100,
                          width: 200,
                          child: Text(news.content)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        )
    );
  }
}

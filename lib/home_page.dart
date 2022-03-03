import 'package:daryo_page/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class HomePage extends StatelessWidget {
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

  Widget build(BuildContext context) {
//TabController _tabController=TabController(length: 3, vsync:this);
    return DefaultTabController(
      length: 3,
      child:Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue,),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Daryo',style: TextStyle(fontSize: 25.0,color: Colors.white),),
                        SizedBox(width: 10,),
                        Container(
                          decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(top: 5),
                          height: 30,
                          child: Row(
                            children: [
                           Container(
                             decoration:BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(14)),
                             child: ElevatedButton(onPressed: (){},
                               child: Text('Lotincha'),
                             ),
                           ),
                              ElevatedButton(onPressed: (){},
                                  child: Text('Крилча')),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                   Row(
                     children: [
                       Text("Tashkent",style: TextStyle(color: Colors.white),),
                       SizedBox(width: 140,),
                       Icon(Icons.cloud_queue,color: Colors.white),
                       Text('+12.5',style: TextStyle(color:Colors.white),)
                     ],
                   ),
                    SizedBox(height: 5,),
                    Divider(color: Colors.white,),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined,color: Colors.white,),
                        Text('10905.8',style: TextStyle(color: Colors.white),),
                        SizedBox(width: 30,),
                        Image.asset('assets/images/euro.png',color: Colors.white,height: 20,width: 20,),
                        Text('12166.8',style: TextStyle(color: Colors.white),),
                        SizedBox(width: 30,),
                        Image.asset('assets/images/turkish-lira.png',color: Colors.white,height: 20,width: 20,),
                        Text('121',style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ],
                )
            ),
            InkWell(
              splashColor: Colors.red,
              onTap: (){},
              child:ListTile(
              title: Text('Qollanma ekranini korsatish'),
             //tileColor: Colors.orangeAccent,
              selectedTileColor: Colors.red,
              dense: true,
              hoverColor: Colors.red,
            )),
            InkWell(onTap:(){},splashColor:Colors.red,child:ListTile(
              title: Text('Songi yangiliklar',style: TextStyle(color: Colors.blue),),
              selectedTileColor: Colors.red,
              dense: true,
            )),
            ListTile(
              title: Text('Mahalliy'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Dunyo'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Texnologiyalar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            Divider(height: 0.5,),
            ListTile(
              title: Text('Tanlangan Habarlar',style: TextStyle(color: Colors.green),),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            Divider(height: 0.5,),
            ListTile(
              title: Text('Madaniyat'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Auto'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Sport'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Photo'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('LifeStyle'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Kolumnistlar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Afisha'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Songi yangiliklar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Songi yangiliklar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Songi yangiliklar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),
            ListTile(
              title: Text('Songi yangiliklar'),
              selectedTileColor: Colors.red,
              dense: true,
            ),

          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Daryo',style: TextStyle(color: Colors.white,fontSize: 20.0),),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
        bottom: TabBar(
          tabs: [
            Tab(child: Text("So'ngi yangiliklar"),),
            Tab(child:Text("Asosiy yangiliklar")),
            Tab(child:Text("Eng ko'p"))
          ],
        ),
      ),
      body:TabBarView(
        children: [
          PageNews(),
          Text('salom'),
          Text('qalesiz')
        ],
      )
    ));
  }

}

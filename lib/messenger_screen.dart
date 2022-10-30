import 'package:flutter/material.dart';
import 'package:messenger/components/components.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,  // علشان ادي مساحة قبل التيل بقيمة 20
        backgroundColor: Colors.white,
        elevation: 0.0,  // اشيل الخط بين ال appbar وال body
        title: Row(
          children: [
            CircleAvatar(
              radius: 27.0,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            SizedBox(width: 15.0,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 25.0,
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 25.0,
                child: Icon(
                  Icons.edit,
                  size: 20,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Search */
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
                ),
                padding: EdgeInsetsDirectional.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'Search',

                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0,),
              /* Story */
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) => buildStoryItem(),  // ال listview بتديني context عايد عليها و index علشان اعمل لوب علي ال item
                    separatorBuilder: (context , index) => SizedBox(
                      width: 15.0,
                    ),
                    itemCount: 15,
                ),
              ),
              SizedBox(height: 20.0,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),  // لازم اوقف الاسكرول علشان انا عامل اسكرول علي الشاشة كلها
                shrinkWrap: true,  // لازم اعمل shrink علشان يبني ال listview كلها علشان هي مي هتسكرول شاشة كلها هتسكرول
                itemBuilder:(context ,index) => buildChatsItem(),
                separatorBuilder:(context , index) => SizedBox(
                  height: 15.0,
                  ),
                itemCount: 30 ,
              ),

              /* Chats */

            ],
          ),
        ),
      ),
    );
  }
}

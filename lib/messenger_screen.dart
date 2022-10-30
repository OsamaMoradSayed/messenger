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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                  SizedBox(
                    width: 15.0,
                  ),
                  buildItemStory(),
                ],
              ),
            ),
            SizedBox(height: 35.0,),

            /* Chats */
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),
                    buildItemChats(),
                    SizedBox(height: 20.0,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

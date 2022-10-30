
import 'package:flutter/material.dart';

Widget buildItemStory() {
  return Container(
    width: 60.0,  /* ادي مساحة العمود كله مساحة الصورة علشان النص ميعدهاش */
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            CircleAvatar(
              radius: 7.5,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        Text(
          'Osama Morad Sayed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
Widget buildItemChats() {
  return Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
          CircleAvatar(
            radius: 7.5,
            backgroundColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(width: 10.0,),
      Expanded(   // اديله هو الاول علشان اقدر ادي للنص تحت
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Osama Morad Sayed',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello i am osama morad , how are you? hello i am osama morad , how are you?',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 15.0,),
                Text(
                  '02:00 AM',
                ),
              ],
            ),

          ],
        ),
      ),
    ],
  );
}


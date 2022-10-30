
import 'package:flutter/material.dart';

Widget buildItemStatus()
{
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
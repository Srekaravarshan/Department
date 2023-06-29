import 'package:department/screens/screens.dart';
import 'package:flutter/material.dart';

Widget blogCard(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              blurRadius: 20, offset: Offset(0, 10), color: Colors.black12)
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: const Color(0xFFFFCCB0), width: 2)),
    child: Column(
      children: [
        blogTop(),
        const Divider(height: 2, thickness: 2, color: Color(0xFFFFCCB0)),
        blogCenter(context),
        const Divider(height: 2, thickness: 2, color: Color(0xFFFFCCB0)),
        blogBottom()
      ],
    ),
  );
}

Widget blogTop() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
    child: Row(
      children: [
        const CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
                'https://rukminim1.flixcart.com/image/416/416/kdukgi80-0/poster/c/x/0/large-24wpwl121-lord-narasimha-waterproof-vinyl-sticker-poster-original-imafunvjyqfz3bxj.jpeg?q=70')),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Narashiman',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('2 hrs ago',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 13,
                    color: Color(0xFFE65100)))
          ],
        )
      ],
    ),
  );
}

Widget blogCenter(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const BlogScreen())),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: const [
          Text(
            'Facts from the Vedas that have been proven by science',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 12),
          Text(
            'Yagna (fire ritual) has a tremendous positive effect on atmosphere.'
            '\n\nWhat is Yagna?\n\nSanatan dharma has a special place for Agnihotra or Yagna which is basically offering pure and edible',
            style: TextStyle(fontFamily: 'Merriweather'),
          )
        ],
      ),
    ),
  );
}

Widget blogBottom() {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                icon: const Icon(Icons.favorite_border,
                    color: Color(0xFFE65100), size: 26),
                onPressed: () {}),
            const Text(
              '53',
              style: TextStyle(
                  color: Color(0xFFE65100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            IconButton(
                icon: const Icon(Icons.chat_bubble_outline,
                    color: Color(0xFFE65100), size: 26),
                onPressed: () {}),
            const Text(
              '53',
              style: TextStyle(
                  color: Color(0xFFE65100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        IconButton(
            icon: const Icon(Icons.send_rounded,
                color: Color(0xFFE65100), size: 26),
            onPressed: () {}),
      ],
    ),
  );
}

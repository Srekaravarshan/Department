import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            color: const Color(0xFFE65100),
            onPressed: () => Navigator.pop(context)),
        title: Row(
          children: [scoresPts(), const SizedBox(width: 10), scoresStar()],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      offset: Offset(0, 10),
                      color: Colors.black12)
                ],
                gradient: LinearGradient(
                  colors: [Color(0xFAFAFAFF), Colors.white],
                  begin: Alignment(0, -1),
                  end: Alignment(0, 0),
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://wallpaperaccess.com/thumb/5201235.jpg')),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Srinivasa Kannan',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          Text('Faculty'),
                          Text(
                            'www.srikans.com',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text('86',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          Text('Articles'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  blogCard(context),
                  const SizedBox(height: 20),
                  blogCard(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

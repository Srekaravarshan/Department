import 'package:department/api/datas.dart';
import 'package:department/screens/screens.dart';
import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FacultyScreen extends StatelessWidget {
  const FacultyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 15),
              ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: faculties.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FacultyDetails(faculty: faculties[index]))),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Colors.black12),
                  ),
                  tileColor: Colors.white,
                  leading: const CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          'https://rukminim1.flixcart.com/image/416/416/kdukgi80-0/poster/c/x/0/large-24wpwl121-lord-narasimha-waterproof-vinyl-sticker-poster-original-imafunvjyqfz3bxj.jpeg?q=70')),
                  title: Text(faculties[index]['name']),
                  subtitle: Text(faculties[index]['role']),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

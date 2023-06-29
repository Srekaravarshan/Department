import 'package:department/api/datas.dart';
import 'package:flutter/material.dart';

Widget materialCard() {
  return ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: subMaterials.length,
    separatorBuilder: (context, index) => const SizedBox(height: 15),
    itemBuilder: (context, index) {
      final subMaterial = subMaterials[index];
      return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 20, offset: Offset(0, 10), color: Colors.black12)
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            ListTile(
              title: Text(subMaterial['title'], style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subMaterial['faculty']),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                separatorBuilder: (context, idx) => const SizedBox(width: 15),
                itemCount: subMaterial['materials'].length,
                itemBuilder: (context, idx) {
                  final material = subMaterial['materials'];
                  return SizedBox(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 110,
                          width: 80,
                          color: Colors.blue[200],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          material[idx]['title'],
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}

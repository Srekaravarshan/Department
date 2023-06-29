import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
              color: Colors.blue)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                'Facts from the Vedas that have been proven by science',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 15),
              Row(
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('2 hrs ago',
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: 13,
                              color: Color(0xFFE65100)))
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Yagna (fire ritual) has a tremendous positive effect on atmosphere.\n\nWhat is Yagna?\n\nSanatan Dharm has a special place for Agnihotra or Yagna which is basically offering pure and edible substances like rice, clarified butter, barley etc to Agni (sacred fire) by chanting spiritual mantras of Vedas.\n\nNow,\n\nA Yagna named “Athirathram” took place in the Panjal village of Thrissur dist. of Kerala.\n\nA team of scientists led by Prof V P N Nampoori, (former director of the International School of Photonics, Cochin University of Science and Technology) went there to observe the effects of this Yagna on environment as whole.\n\nThey observe these phenomenon;\n\nThe germination process of all the seeds around that area increased tremendously. For example, seeds of Bengal gram germinated 2000 times faster than any other place.\nAir, around 1.5 km. circumference of the Yagna place was very pure as compared to other places and it contained very less amount of microbe colonies as compared to other places.\nWater bodies near Yagna place contained very less amount of microbial activities and the water was very clean as compared to normal water.\nIn a nutshell, all the environmental components like air, water and soil were free from any microbial activities and were very pure.\n\nThis team included scientists like Dr Rajalakshmy Subrahmanian (Cusat), Dr Parvathi Menon (MG College Thiruvanathapuram), Dr Maya R Nair (Pattambi Government College), Prof Saxena ( Indian Institute of Astrophysics, Bangalore) and Prof. Rao (Andhra University).\n\nThe significance of Yagna was proved by this team of scientists.\n\nPlease go through this article for more info.\n\nAncient fire ritual has positive impact on environment: Scientists\n\nAnd, I would like to add something to this which is not in the context of this topic but I feel this should reach as many people as possible.\n\nA facebook page of Beingindian made utter nonsense and sarcastic remarks on this ancient Sanatan Dharm tradition of Yagna and made fun of this.\n\nAlso, according to them by performing Yagna, we are polluting the air so much so that pollution control board needs to take steps to stop these Yagnas.\n",
                style: TextStyle(fontFamily: 'Merriweather', fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

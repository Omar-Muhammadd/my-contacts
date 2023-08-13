import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/contacts_grid.dart';
import 'widgets/social_media_icons.dart';


class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Map<String,String> nameMedia = {
    'whatsapp.png' : 'tel:+201210165298',
    'facebook.png' : 'tel:+201210165298',
    'messenger.png' : 'tel:+201210165298',
    'gmail.png' : 'tel:+201210165298',
    'in.png' : 'tel:+201210165298',
    'skype.png' : 'tel:+201210165298',
    'snapchat.png' : 'tel:+201210165298',
    'telegram.png' : 'tel:+201210165298',
    'twitter.png' : 'tel:+201210165298',
    'youtube.png' : 'tel:+201210165298',
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                right: 15,
                left: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/omar.jpg'),
                    radius: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Omar Muhammad',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse('tel:+201210165298'),
                          );
                        },
                        child: const Text(
                          '+201210165298',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            launchUrl(
                              Uri.parse('tel:+201210165298'),
                            );
                          },
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  contactsGride(nameMedia: nameMedia),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





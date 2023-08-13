import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  String social;
  String socialLink;
  SocialMedia({
    super.key,
    required this.social,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/$social'),
          backgroundColor: Colors.transparent,
          radius: 40,
        ),
        onTap: (){
          launchUrl(Uri.parse(socialLink));
        },
      ),
    );
  }
}
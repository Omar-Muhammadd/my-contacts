import 'package:flutter/material.dart';
import 'social_media_icons.dart';

class contactsGride extends StatelessWidget {
  const contactsGride({
    super.key,
    required this.nameMedia,
  });

  final Map<String, String> nameMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: nameMedia.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (BuildContext, index) {
        return SocialMedia(
          social: nameMedia.keys.toList()[index] ,socialLink: nameMedia.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/b.png',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Stay Connected With a Community',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              child: const Text(
                'communities bring menmeber togerher in topic_based groups, and make easy to get admin anniuncement. Any community yure aadded to will apper here',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _launchInBrowser(Uri(scheme: 'https', host: 'www.facebook.com'));
                // Navigate to ScreenB when the button is pressed
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Screen()),
                // );
              },
              // child: const  Text('Go to Screen ',textAlign: TextAlign.center,),
              child: const FaIcon(
                FontAwesomeIcons.personDressBurst,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}

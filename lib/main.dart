import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch Url'),
          onPressed: ()async{

            const url = 'www.mehrabbozorgi.ir';
            final Uri uri = Uri(scheme: 'https', host: url);
            if (!await launchUrl(uri, mode:
            LaunchMode.externalApplication)) {
              throw "Can not launch url";
            }

          },
        ),
      ),
    );
  }
}
























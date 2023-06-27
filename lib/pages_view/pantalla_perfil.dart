import 'package:flutter/material.dart';
import 'package:proyecto_integrador_flutter/pages_view/pantalla_dashboard.dart';

class Page_profile extends StatefulWidget {
  const Page_profile({super.key});

  @override
  State<Page_profile> createState() => _Page_profileState();
}

class _Page_profileState extends State<Page_profile> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 48,
                  backgroundImage: AssetImage('assets/background.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Rose Helbert',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Help & Support'),
                  subtitle: Text('Help center and legal support'),
                  leading: Image.asset('assets/icons/support.png'),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('FAQ'),
                  subtitle: Text('Questions and Answer'),
                  leading: Image.asset('assets/icons/faq.png'),
                  trailing: Icon(Icons.chevron_right, color: Colors.black),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => pantalla_menu())),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
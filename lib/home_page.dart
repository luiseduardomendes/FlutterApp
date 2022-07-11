import 'package:flutter/material.dart';
import 'package:my_app/disc_forum_button.dart';
import 'package:my_app/logout_button.dart';
import 'package:my_app/notice_wall_button.dart';
import 'package:my_app/settings_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.width / 2.5;
    int userId = int.parse('${ModalRoute.of(context)?.settings.arguments}');
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                children: [
                  const Icon(Icons.menu_book_sharp, size: 100,),
                  Text('S.O.S. Help Studies', style: Theme.of(context).textTheme.headline4,),
                ],
              ),
              const Spacer(flex: 4,),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  
                  children: <Widget>[
                    Container(
                      width: scale,
                      height: scale,
                      padding: const EdgeInsets.all(8.0),
                      child: DiscussionForumButton(userId: userId),
                    ),
                    
                    Container(
                      width: scale,
                      height: scale,
                      padding: const EdgeInsets.all(8.0),
                      child: const NoticeWallButton(),
                    ),
                            
                    Container(
                      width: scale,
                      height: scale,
                      padding: const EdgeInsets.all(8.0),
                      child: SettingsButton(userId: userId),
                    ),
                            
                    Container(
                      width: scale,
                      height: scale,
                      padding: const EdgeInsets.all(8.0),
                      child: const LogoutButton(),
                    ),
                            
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

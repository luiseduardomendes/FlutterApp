import 'package:flutter/material.dart';

import 'home_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).size.width / 3.5;
    int userId = int.parse('${ModalRoute.of(context)?.settings.arguments}');
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  Image.asset(
                    'lib/logo.png',
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  Text('S.O.S Help Studies', style: Theme.of(context).textTheme.headline4,),
                ],
              ),
              const Spacer(),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(

                  children: <Widget>[
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Fórum de\nDiscussões',
                            arguments: userId,
                            icon: Icons.forum,
                            navigator: '/home/discussion',
                            size: scale,
                          )
                        ),
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Mural de\nAvisos',
                            arguments: Null,
                            icon: Icons.notification_important_outlined,
                            navigator: '/home/notice_wall',
                            size: scale,
                          )
                        ),
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Conversas',
                            arguments: Null,
                            icon: Icons.chat,
                            navigator: '/',
                            size: scale,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Calendário',
                            arguments: userId,
                            icon: Icons.calendar_month,
                            //todo: create calendar
                            navigator: '/home/agenda',
                            size: scale,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Agenda',
                            arguments: userId,
                            icon: Icons.book,
                            navigator: '/home/agenda',
                            size: scale,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: scale,
                          height: scale,
                          padding: const EdgeInsets.all(8.0),
                          child: HomePageButton(
                            text: 'Ajustes',
                            arguments: userId,
                            icon: Icons.settings,
                            navigator: '/home/settings',
                            size: scale,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    Container(
                      width: scale,
                      height: scale,
                      padding: const EdgeInsets.all(8.0),
                      child: HomePageButton(
                        text: 'Log out',
                        arguments: Null,
                        icon: Icons.logout,
                        navigator: '/',
                        size: scale,
                      ),
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

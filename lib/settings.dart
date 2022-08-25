import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Tema escuro: ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                        value: AppController.instance.isThemeDark,
                        onChanged: (value) {
                          AppController.instance.changeTheme();
                        }),
                  )

                ],
              ),
            ),
            const Spacer(),
          ],
        )
      ),
    );
  }
}

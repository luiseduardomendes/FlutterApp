import 'package:flutter/material.dart';

import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Icon(
                      Icons.menu_book,size: 100,
                      color: Theme.of(context).colorScheme.primary,
                      shadows: [Shadow(
                        color: Theme.of(context).colorScheme.onPrimary,
                        offset: const Offset(1.0,1.5)
                      )],
                    ),
                    Text(
                      'S.O.S Help Studies',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20.0,
                        shadows: [
                          Shadow(
                            color: Theme.of(context).colorScheme.primary,
                            offset: const Offset(0.0,1.0),
                            blurRadius: 5.0,
                          ),
                          Shadow(
                            color: Theme.of(context).colorScheme.primary,
                            offset: const Offset(1.0,0.0),
                            blurRadius: 5.0,
                          )
                        ]
                      )
                    ),
                  ],
                ),
                TextField(
                  onChanged: (text){
                    _email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'E-mail ',
                    border: UnderlineInputBorder(),
                  ),
                ),
                TextField(
                  onChanged: (text){
                    _password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key_outlined),
                    labelText: 'senha ',
                    border: UnderlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () {
                    int id = getEmailId(_email);
                    var pw = getPassword(id);
                    if (_password == pw){
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                    else{
                      print('Incorreto');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

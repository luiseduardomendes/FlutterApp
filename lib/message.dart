import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  final String name = 'João Silva';
  final String topic = 'Física';
  final String message = 'Qual é a carga elementar do elétron?';
  final String datetime = '08/06/2022 - 14:37';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Container(
          color: Theme.of(context).focusColor,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.person,
                          size: 50,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    topic,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    name,
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    message,
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    datetime,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Align(
                        alignment: Alignment.topCenter,
                        child: Like_comment_button()
                    )
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}

class Like_comment_button extends StatefulWidget{
  const Like_comment_button({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => Like_comment_button_state();
}

class Like_comment_button_state extends State<Like_comment_button> {
  bool liked = false;
  Color color = Colors.white;
  String text = 'Curtir';

  @override
  Widget build(BuildContext context) {

    return Row(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.background),
            ),
            onPressed: (){
              setState((){
                if (liked){
                  liked = false;
                  color = Theme.of(context).colorScheme.onPrimary;
                  text = 'Curtir';
                }
                else{
                  liked = true;
                  color = Theme.of(context).colorScheme.primary;
                  text = 'Curtido';
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  color: color,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,

                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.background),
            ),
            onPressed: (){
              setState((){});
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.mode_comment_outlined,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),

                Text(
                  'Comentar',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


}
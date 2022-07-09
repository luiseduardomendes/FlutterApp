import 'package:flutter/material.dart';

class Comment_button extends StatefulWidget{

  @override
  State<Comment_button> createState() => Comment_button_state();
}

class Comment_button_state extends State<Comment_button>{

  @override
  Widget build(BuildContext context){
    return(
        Container(
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
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.mode_comment_outlined,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:Text(
                    'Comentar',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

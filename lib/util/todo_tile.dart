import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoTile extends StatelessWidget{
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
   ToDoTile(
    {super.key,required this.taskName,required this.taskCompleted,
    required this.onChanged}
   );
  build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top:25),
      
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  value: taskCompleted, onChanged: onChanged),
                Text(taskName,
                style: TextStyle(decoration:taskCompleted? TextDecoration.lineThrough:TextDecoration.none,),),
              ],
            ),
          ),
          decoration: BoxDecoration(color: Colors.yellow,
          borderRadius: BorderRadius.circular(12)),
          
        ),
      
    );
  }
}
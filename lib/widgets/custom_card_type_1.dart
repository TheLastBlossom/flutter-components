import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(            
        children: [                
          const ListTile(  
            contentPadding: EdgeInsets.all(10),                
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('I am a title'),
            subtitle: Text('Mollit minim ad qui in ex nostrud reprehenderit nostrud. Labore enim Lorem aliqua veniam occaecat adipisicing exercitation. Est ea ex ipsum duis. Sunt tempor est commodo aliquip cillum dolore incididunt. Culpa do ex deserunt ea id exercitation irure ut pariatur. Eiusmod voluptate ut cupidatat mollit veniam ullamco veniam cupidatat dolor ipsum. Labore sit id incididunt aliqua aute deserunt.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){},
                child: const Text("Cancel")),
                TextButton(onPressed: () {                
                },child: const Text('OK'),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

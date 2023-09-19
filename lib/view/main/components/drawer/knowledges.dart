import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'HTML5, CSS#'),
        KnowledgeText(knowledge: 'ReactJS, Javascript'),
        KnowledgeText(knowledge: 'Laravel, PHP'),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Data Analysis'),
        KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }

}

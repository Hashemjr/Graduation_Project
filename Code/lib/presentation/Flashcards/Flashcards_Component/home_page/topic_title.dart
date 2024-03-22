import 'package:chineasy/presentation/Flashcards/Animation/fade-in-animation.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/constants.dart';
import 'package:chineasy/presentation/Flashcards/utils/methods.dart';
import 'package:flutter/material.dart';

class TopicTile extends StatelessWidget {
  const TopicTile({Key? key, required this.topic}) : super(key: key);
  final String topic;
  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
        child: GestureDetector(
            onTap: () {
              print('Tile Tapped $topic');
              loadSession(context: context, topic: topic);
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(KcircularRadius),
                ),
                child: Column(children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Hero(
                              tag: topic,
                              child: Image.asset('assets/images/$topic.png')))),
                  Expanded(
                      child: Center(
                          child: Text(topic,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white))))
                ]))));
  }
}

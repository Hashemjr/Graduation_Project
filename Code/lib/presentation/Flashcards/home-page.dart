import 'package:chineasy/presentation/Flashcards/Animation/fade-in-animation.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_data/words.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/Themes.dart';
import 'package:chineasy/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/home_page/topic_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> topics = [];

  @override
  initState() {
    for (var t in words) {
      if (!topics.contains(t.topic)) {
        topics.add(t.topic);
      }
      topics.sort();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.04;
    return Theme(
        data: appTheme,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
            toolbarHeight: size.height * 0.12,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(),
                FadeInAnimation(
                    child:
                        Text('Flashcards\n 识字卡片', textAlign: TextAlign.center)),
                Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.08,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.homePageContainerScreen);
                        },
                        child: Image.asset('assets/images/evaluation.png'),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Padding(
              padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
              child: CustomScrollView(slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: false,
                  expandedHeight: size.height * 0.3,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Padding(
                          padding: EdgeInsets.all(size.width * 0.1),
                          child: Container(
                              color: Colors.transparent,
                              child: Center(
                                child: FadeInAnimation(
                                    child: Image.asset(
                                        'assets/images/dragon .png')),
                              )))),
                ),
                SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => TopicTile(topic: topics[index]),
                        childCount: topics.length),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6))
              ])),
        ));
  }
}

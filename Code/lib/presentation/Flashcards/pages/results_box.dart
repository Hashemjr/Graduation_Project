import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/Themes.dart';
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/Flashcards/home-page.dart';
import 'package:chineasy/presentation/Flashcards/pages/Flashcard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardsNotifier>(
      builder: (_, notifier, __) => AlertDialog(
          title: Text(
            notifier.isSessionCompleted
                ? 'Session Completed!'
                : "Round Completed!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            Table(columnWidths: {
              0: FlexColumnWidth(3),
              1: FlexColumnWidth(1),
            }, children: [
              buildTableRow(
                  title: 'Total Round', stat: notifier.roundTally.toString()),
              buildTableRow(
                  title: 'No. Cards', stat: notifier.cardTally.toString()),
              buildTableRow(
                  title: 'No. Correct', stat: notifier.correctTally.toString()),
              buildTableRow(
                  title: 'No. Incorrect',
                  stat: notifier.incorrectTally.toString()),
              buildTableRow(
                  title: 'Efficiency',
                  stat: '${notifier.correctPercentage.toString()}%'),
            ]),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  notifier.isSessionCompleted
                      ? SizedBox()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 32),
                              backgroundColor:
                                  Color.fromARGB(255, 6, 133, 192)),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FlashcardsPage(
                                          topic: "Incorrect",
                                          themeData: appTheme,
                                        )));
                          },
                          child: Text("Review")),
                  Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          backgroundColor: Color.fromARGB(255, 6, 133, 192)),
                      onPressed: () {
                        notifier.reset();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                      },
                      child: Text("Homepage"))
                ],
              ),
            ),
          ]),
    );
  }
}

TableRow buildTableRow({required String title, required String stat}) {
  return TableRow(children: [
    TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ))),
    TableCell(
        child: Text(stat,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blueAccent)))
  ]);
}

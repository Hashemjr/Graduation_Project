import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PinyinChart extends StatefulWidget {
  @override
  _PinyinChartState createState() => _PinyinChartState();
}

class _PinyinChartState extends State<PinyinChart> {
  late AudioPlayer _audioPlayer;

  final Map<String, String> pinyinMap = {
    'ā':'a1', 'á':'a2', 'ǎ':'a3', 'à':'a4',
    'ō':'o1', 'ó':'o2', 'ǒ':'o3', 'ò':'o4',
    'ē':'e1', 'é':'e2', 'ě':'e3', 'è':'e4',
    'bā':'ba1', 'bá':'ba2', 'bǎ':'ba3', 'bà':'ba4',
    'pā':'pa1', 'pá':'pa2', 'pǎ':'pa3', 'pà':'pa4',
    'mā':'ma1', 'má':'ma2', 'mǎ':'ma3', 'mà':'ma4',
    'fā':'fa1', 'fá':'fa2', 'fǎ':'fa3', 'fà':'fa4',
    'dā':'da1', 'dá':'da2', 'dǎ':'da3', 'dà':'da4',
    'tā':'ta1', 'tá':'ta2', 'tǎ':'ta3', 'tà':'ta4',
    'nā':'na1', 'ná':'na2', 'nǎ':'na3', 'nà':'na4',
    'lā':'la1', 'lá':'la2', 'lǎ':'la3', 'là':'la4',
    'gā':'ga1', 'gá':'ga2', 'gǎ':'ga3', 'gà':'ga4',
    'kā':'ka1', 'ká':'ka2', 'kǎ':'ka3', 'kà':'ka4',
    'hā':'ha1', 'há':'ha2', 'hǎ':'ha3', 'hà':'ha4',
    'zhā':'zha1', 'zhá':'zha2', 'zhǎ':'zha3', 'zhà':'zha4',
    'chā':'cha1', 'chá':'cha2', 'chǎ':'cha3', 'chà':'cha4',
    'shā':'sha1', 'shá':'sha2', 'shǎ':'sha3', 'shà':'sha4',
    'zā':'za1', 'zá':'za2', 'zǎ':'za3', 'zà':'za4',
    'cā':'ca1', 'cá':'ca2', 'cǎ':'ca3', 'cà':'ca4',
    'sā':'sa1', 'sá':'sa2', 'sǎ':'sa3', 'sà':'sa4',
    'yā':'ya1', 'yá':'ya2', 'yǎ':'ya3', 'yà':'ya4',
    'wā':'wa1', 'wá':'wa2', 'wǎ':'wa3', 'wà':'wa4',
    'yī':'yi1', 'yí':'yi2', 'yǐ':'yi3', 'yì':'yi4',
    'wū':'wu1', 'wú':'wu2', 'wǔ':'wu3', 'wù':'wu4',
    'yū':'yu1', 'yú':'yu2', 'yǔ':'yu3', 'yù':'yu4',
    'bō':'bo1', 'bó':'bo2', 'bǒ':'bo3', 'bò':'bo4',
    'pō':'po1', 'pó':'po2', 'pǒ':'po3', 'pò':'po4',
    'mō':'mo1', 'mó':'mo2', 'mǒ':'mo3', 'mò':'mo4',
    'fō':'fo1', 'fó':'fo2', 'fǒ':'fo3', 'fò':'fo4',
    'dē':'de1', 'dé':'de2', 'dě':'de3', 'dè':'de4',
    'tē':'te1', 'té':'te2', 'tě':'te3', 'tè':'te4',
    'nē':'ne1', 'né':'ne2', 'ně':'ne3', 'nè':'ne4',
    'lē':'le1', 'lé':'le2', 'lě':'le3', 'lè':'le4',
    'gē':'ge1', 'gé':'ge2', 'gě':'ge3', 'gè':'ge4',
    'kē':'ke1', 'ké':'ke2', 'kě':'ke3', 'kè':'ke4',
    'hē':'he1', 'hé':'he2', 'hě':'he3', 'hè':'he4',
    'jī':'ji1', 'jí':'ji2', 'jǐ':'ji3', 'jì':'ji4',
    'qī':'qi1', 'qí':'qi2', 'qǐ':'qi3', 'qì':'qi4',
    'xī':'xi1', 'xí':'xi2', 'xǐ':'xi3', 'xì':'xi4',
    'zhī':'zhi1', 'zhí':'zhi2', 'zhǐ':'zhi3', 'zhì':'zhi4',
    'chī':'chi1', 'chí':'chi2', 'chǐ':'chi3', 'chì':'chi4',
    'shī':'shi1', 'shí':'shi2', 'shǐ':'shi3', 'shì':'shi4',
    'rī':'ri1', 'rí':'ri2', 'rǐ':'ri3', 'rì':'ri4',
    'zī':'zi1', 'zí':'zi2', 'zǐ':'zi3', 'zì':'zi4',
    'cī':'ci1', 'cí':'ci2', 'cǐ':'ci3', 'cì':'ci4',
    'sī':'si1', 'sí':'si2', 'sǐ':'si3', 'sì':'si4',
    'yī':'yi1', 'yí':'yi2', 'yǐ':'yi3', 'yì':'yi4',
    'wū':'wu1', 'wú':'wu2', 'wǔ':'wu3', 'wù':'wu4',
    'yū':'yu1', 'yú':'yu2', 'yǔ':'yu3', 'yù':'yu4',
    'juān':'juan1', 'juán':'juan2', 'juǎn':'juan3', 'juàn':'juan4',
    'quān':'quan1', 'quán':'quan2', 'quǎn':'quan3', 'quàn':'quan4',
    'xuān':'xuan1', 'xuán':'xuan2', 'xuǎn':'xuan3', 'xuàn':'xuan4',
    'yān':'yan1', 'yán':'yan2', 'yǎn':'yan3', 'yàn':'yan4',
    'wān':'wan1', 'wán':'wan2', 'wǎn':'wan3', 'wàn':'wan4',
    'zhāng':'zhang1', 'zháng':'zhang2', 'zhǎng':'zhang3', 'zhàng':'zhang4',
    'chāng':'chang1', 'cháng':'chang2', 'chǎng':'chang3', 'chàng':'chang4',
    'shāng':'shang1', 'sháng':'shang2', 'shǎng':'shang3', 'shàng':'shang4',
    'rāng':'rang1', 'ráng':'rang2', 'rǎng':'rang3', 'ràng':'rang4',
    'zāng':'zang1', 'záng':'zang2', 'zǎng':'zang3', 'zàng':'zang4',
    'cāng':'cang1', 'cáng':'cang2', 'cǎng':'cang3', 'càng':'cang4',
    'sāng':'sang1', 'sáng':'sang2', 'sǎng':'sang3', 'sàng':'sang4',
    'yīng':'ying1', 'yíng':'ying2', 'yǐng':'ying3', 'yìng':'ying4',
    'wēng':'weng1', 'wéng':'weng2', 'wěng':'weng3', 'wèng':'weng4',
  };

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playSound(String pinyin) async {
    try {
      String url = 'https://yabla.vo.llnwd.net/media.yabla.com/chinese_static/audio/alicia/$pinyin.mp3';
      print('Playing URL: $url');
      await _audioPlayer.setSourceUrl(url);
      await _audioPlayer.resume();
    } catch (e) {
      print('Error playing sound: $e');
      // Show a Snackbar or any other UI to inform the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to load audio for $pinyin'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double cardPadding = MediaQuery.of(context).size.width * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Interactive Pinyin Chart',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(cardPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: cardPadding,
          mainAxisSpacing: cardPadding,
        ),
        itemCount: pinyinMap.keys.length,
        itemBuilder: (context, index) {
          String pinyin = pinyinMap.keys.elementAt(index);
          return GestureDetector(
            onTap: () => _playSound(pinyinMap[pinyin]!),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Center(
                child: Text(
                  pinyin,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PinyinChart(),
  ));
}
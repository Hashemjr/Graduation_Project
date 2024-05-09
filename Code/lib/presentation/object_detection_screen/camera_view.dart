import 'dart:io';

import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:translator/translator.dart';
import 'package:pinyin/pinyin.dart';

void main() {
  runApp(MyApp());
}

class ObjectDetectionWrapper {
  MyApp myApp; // Create an instance of MyApp

  ObjectDetectionWrapper() : myApp = MyApp() {
    myApp = MyApp();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePickerDemo(),
    );
  }
}

class ImagePickerDemo extends StatefulWidget {
  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  List<String> lastLabels = [];
  List<String> chineseLabels = [];
  List<String> pinyinLabels = [];
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  File? file;
  var _recognitions;
  var v = "";
  // var dataList = [];
  @override
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
  }

  Future<String> translateToChinese(String text) async {
    final translator = GoogleTranslator();
    Translation translation = await translator.translate(text, to: 'zh-cn');
    return translation.text;
  }

  Future<String> getPinyin(String text) async {
    String pinyin = PinyinHelper.getPinyin(text,
        separator: ' ', format: PinyinFormat.WITH_TONE_MARK);
    return pinyin;
  }

  loadmodel() async {
    await Tflite.loadModel(
      model: "assets/models/model_unquant.tflite",
      labels: "assets/labels/labels.txt",
    );
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image = image;
        file = File(image!.path);
      });
      detectimage(file!);
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Future detectimage(File image) async {
    int startTime = new DateTime.now().millisecondsSinceEpoch;
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    lastLabels.clear();
    for (var recognition in recognitions!) {
      String fullLabel = recognition['label']; // Get the full label string
      String label = fullLabel
          .split(' ')
          .sublist(1)
          .join(' '); // Extract only the label part
      lastLabels.add(label);
    }

    chineseLabels.clear();
    pinyinLabels.clear();
    for (var label in lastLabels) {
      String chineseLabel = await translateToChinese(label);
      String pinyinLabel = await getPinyin(chineseLabel);
      chineseLabels.add(chineseLabel);
      pinyinLabels.add(pinyinLabel);
    }

    setState(() {
      _recognitions = recognitions;
      v = recognitions.toString();
    });
    print(_recognitions);
    int endTime = new DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF000000),
        title: Text('Object Detection', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: appTheme.gray90001,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              Image.file(
                File(_image!.path),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )
            else
              Text('No image selected', style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Pick Image from Gallery'),
            ),
            SizedBox(height: 20),
            if (lastLabels.isNotEmpty)
              Column(
                children: lastLabels.asMap().entries.map((entry) {
                  int index = entry.key;
                  String label = entry.value;
                  String chineseLabel = chineseLabels[index];
                  String pinyinLabel =
                      pinyinLabels[index]; // Retrieve the Pinyin label
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(label,
                          style: TextStyle(color: appTheme.deepOrangeA700)),
                      SizedBox(width: 10),
                      Text(
                        chineseLabel,
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                      SizedBox(width: 10),
                      Text(pinyinLabel,
                          style: TextStyle(
                              color: Colors
                                  .indigoAccent)), // Display the Pinyin label
                    ],
                  );
                }).toList(),
              )
            else
              Text('No recognitions', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

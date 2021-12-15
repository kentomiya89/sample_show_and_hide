import 'package:flutter/material.dart';

class InteractiveVisibilityScreen extends StatefulWidget {
  const InteractiveVisibilityScreen();

  @override
  State<InteractiveVisibilityScreen> createState() =>
      _InteractiveVisibilityScreenState();
}

class _InteractiveVisibilityScreenState
    extends State<InteractiveVisibilityScreen> {
  int progressIndex = 0;
  List<bool> boolList = [
    true, // 最初だけ表示
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('対話型UI'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: boolList[0],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.red),
                      ),
                    ),
                    Visibility(
                      visible: boolList[1],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.blue),
                      ),
                    ),
                    Visibility(
                      visible: boolList[2],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.green),
                      ),
                    ),
                    Visibility(
                      visible: boolList[3],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.yellow),
                      ),
                    ),
                    Visibility(
                      visible: boolList[4],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.orange),
                      ),
                    ),
                    Visibility(
                      visible: boolList[5],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.pink),
                      ),
                    ),
                    Visibility(
                      visible: boolList[6],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.purple),
                      ),
                    ),
                    Visibility(
                      visible: boolList[7],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.brown),
                      ),
                    ),
                    Visibility(
                      visible: boolList[8],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.grey),
                      ),
                    ),
                    Visibility(
                      visible: boolList[9],
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ColorBox(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: progressIndex < 9
                      ? () {
                          setState(() {
                            progressIndex++;
                            boolList[progressIndex] = true;
                          });
                        }
                      : null,
                  child: const Text('次へ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InteractiveCollectionIfScreen extends StatefulWidget {
  const InteractiveCollectionIfScreen();
  @override
  _InteractiveCollectionIfScreenState createState() =>
      _InteractiveCollectionIfScreenState();
}

class _InteractiveCollectionIfScreenState
    extends State<InteractiveCollectionIfScreen> {
  int progressIndex = 0;
  List<bool> boolList = [
    true, // 最初だけ表示
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('対話型UI'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (boolList[0])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.red),
                  ),
                if (boolList[1])
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.blue),
                  ),
                if (boolList[2])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.green),
                  ),
                if (boolList[3])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.yellow),
                  ),
                if (boolList[4])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.orange),
                  ),
                if (boolList[5])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.pink),
                  ),
                if (boolList[6])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.purple),
                  ),
                if (boolList[7])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.brown),
                  ),
                if (boolList[8])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.grey),
                  ),
                if (boolList[9])
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColorBox(color: Colors.black),
                  ),
                ElevatedButton(
                  onPressed: progressIndex < 9
                      ? () {
                          setState(() {
                            progressIndex++;
                            boolList[progressIndex] = true;
                          });
                        }
                      : null,
                  child: const Text('次へ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

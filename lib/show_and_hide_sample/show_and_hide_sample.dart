import 'package:flutter/material.dart';
import 'package:sample_show_and_hide/show_and_hide_sample/square_view.dart';

class ShowAndHideSampleScreen extends StatelessWidget {
  const ShowAndHideSampleScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('表示/非表示サンプル')),
      body: _ShowAndHideSampleBody(),
    );
  }
}

class _ShowAndHideSampleBody extends StatefulWidget {
  const _ShowAndHideSampleBody();

  @override
  _ShowAndHideSampleBodyState createState() => _ShowAndHideSampleBodyState();
}

class _ShowAndHideSampleBodyState extends State<_ShowAndHideSampleBody> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _OpacityArea(opacity: isShow ? 1 : 0),
            _OffStageArea(offstage: !isShow),
            _VisibilityArea(visible: isShow),
            _CollectionIfArea(include: isShow),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isShow = false;
                });
              },
              child: Text('Hide'),
            ),
            SizedBox(width: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isShow = true;
                });
              },
              child: Text('Show'),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}

class _OpacityArea extends StatelessWidget {
  const _OpacityArea({required this.opacity});
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Text('Opacity', style: TextStyle(fontSize: 15)),
        ),
        const SquareView(color: Colors.blue),
        Opacity(
          opacity: opacity,
          child: const _CountTextButtonView(),
        ),
        const SquareView(color: Colors.red),
      ],
    );
  }
}

class _OffStageArea extends StatelessWidget {
  const _OffStageArea({required this.offstage});

  final bool offstage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Text('OffStage', style: TextStyle(fontSize: 15)),
        ),
        const SquareView(color: Colors.blue),
        Offstage(
          offstage: offstage,
          child: const _CountTextButtonView(),
        ),
        const SquareView(color: Colors.red),
      ],
    );
  }
}

class _VisibilityArea extends StatelessWidget {
  const _VisibilityArea({required this.visible});

  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Text('Visibility', style: TextStyle(fontSize: 15)),
        ),
        const SquareView(color: Colors.blue),
        // maintainState: trueはOffStageと一緒
        // maintainSize: true & maintainAnimation: trueはOpacityを一緒　両方true設定しないと
        // assertに引っかかるため注意
        // maintainInteractivity: trueにすると見えてなくてもタップできるようになる
        Visibility(
          visible: visible,
          // maintainState: true,
          // maintainSize: true,
          // maintainAnimation: true,
          // maintainInteractivity: true,
          child: const _CountTextButtonView(),
        ),
        const SquareView(color: Colors.red),
      ],
    );
  }
}

class _CollectionIfArea extends StatelessWidget {
  const _CollectionIfArea({required this.include});

  final bool include;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Text('Collection If', style: TextStyle(fontSize: 15)),
        ),
        const SquareView(color: Colors.blue),
        if (include) const _CountTextButtonView(),
        const SquareView(color: Colors.red),
      ],
    );
  }
}

// カウント用テキストボタン
class _CountTextButtonView extends StatefulWidget {
  const _CountTextButtonView();

  @override
  _CountTextButtonState createState() => _CountTextButtonState();
}

class _CountTextButtonState extends State<_CountTextButtonView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SquareView(
      color: Colors.green,
      child: TextButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Text(
          '$count',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and check'),
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              // divisions: 5,
              value: _sliderValue,
              onChanged: _sliderEnable ? (value) {
                setState(() {
                  _sliderValue = value;
                });
              }: null,
            ),
            Checkbox(      
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              },
            ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: Text('Enable slider'),
              value: _sliderEnable, onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            },),
            Switch.adaptive(value: _sliderEnable, onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            },),
            SwitchListTile.adaptive(activeColor: AppTheme.primary,
              title: Text('Enable slider'),
              value: _sliderEnable, onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            },),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/b0/ab/84/b0ab849d36189eb6b4e347f85ce0f182.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider & Checks"),
        ),
        body: Column(
          children: [
            Slider(
              min: 50,
              max: 800,
              activeColor: AppTheme.primary,
              divisions: 10,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: _sliderEnabled
            //       ? (value) {
            //           _sliderEnabled = value ?? true;
            //           setState(() {});
            //         }
            //       : null,
            // ),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text("Habilitar Slider"),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value;
            //     setState(() {});
            //   },
            // ),
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar SwichList"),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),

            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      "https://images.wikidexcdn.net/mwuploads/esssbwiki/5/57/latest/20181103152435/Samus_Oscura_MP3C.png"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(height: 100)
          ],
        ));
  }
}

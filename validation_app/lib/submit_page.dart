import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validation_app/TextSubmitWidget.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: TextSubmitWidget(
            onSubmit:(value)=> print(value)
          ),
      ),
    );


  }
}

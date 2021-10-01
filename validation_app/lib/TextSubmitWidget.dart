import 'package:flutter/material.dart';

class TextSubmitWidget extends StatefulWidget {
  final ValueChanged<String> onSubmit;
  const TextSubmitWidget({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _TextSubmitWidgetState createState() => _TextSubmitWidgetState();
}

class _TextSubmitWidgetState extends State<TextSubmitWidget> {
  final _controller = TextEditingController();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  clearTextInput(){

    _controller.clear();

  }

  String? get errorText{
    final text = _controller.value.text;
    if(text.isEmpty){
      return 'Can\'t be empty';
    }
    if(text.length < 4){
      return 'too short';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context,_) {
        return Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                labelText: ' Enter your name',
              ),
            ),
            ElevatedButton(
                onPressed: errorText==null
                            ? () => widget.onSubmit(_controller.value.text)
                            : null,
                child: Text('Submit',
                  style: Theme.of(context)
                      .textTheme
                      .headline6?.copyWith(color: Colors.white),))
          ],
        );
      }
    );

  }
}

import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = '';
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      flex: (width <= 768) ? 0 : 3,
      child: Container(
        margin: EdgeInsets.all((width <= 768)?10:20),
        padding: EdgeInsets.all((width <= 768)?15:40),
        decoration: BoxDecoration(
          color: Colors.lightGreen[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            InputTextField(
              hintText: 'Name',
              maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
            InputTextField(
              hintText: 'Email',
              maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
            InputTextField(
              hintText: 'Description',
              maxLines: 3,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.hintText,
    this.maxLines,
  }) : super(key: key);

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink[100],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextField(
        maxLines: maxLines,
        style: TextStyle(
            color: Colors.deepPurple, fontFamily: 'Montserrat', fontSize: 20.0),
        decoration: InputDecoration(
          hintText: hintText,
          focusColor: Colors.pink,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

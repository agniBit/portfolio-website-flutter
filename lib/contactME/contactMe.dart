import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/contactME/components/form.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      width: mQ.width,
      color: Colors.lightGreen[300],
      padding: EdgeInsets.symmetric(
          horizontal: mQ.width * .10, vertical: mQ.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mQ.width * .8,
            alignment: Alignment.centerLeft,
            child: Text(
              'Contact ME',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Flex(
              direction: (mQ.width <= 768) ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: (mQ.width <= 768) ? 0 : 2,
                  child: Container(
                    padding: EdgeInsets.all((mQ.width <= 768) ? 20 : 30),
                    child: Lottie.asset('assets/contact.json'),
                  ),
                ),
                if (mQ.width <= 768)
                  SizedBox(
                    height: 25,
                  ),
                ContactForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

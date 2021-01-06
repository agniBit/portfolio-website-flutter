import 'package:flutter/material.dart';

class CustomBottomNavBAr extends StatelessWidget {
  const CustomBottomNavBAr({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(mQ.width*.10, 50, mQ.width*.10, 20,),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/github.png',
                width: 30,
                height: 30,
              ),
              SizedBox(width: mQ.width*.05,),
              Image.asset(
                'assets/images/linkdin.png',
                width: 30,
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}

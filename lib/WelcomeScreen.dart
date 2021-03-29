import 'package:flutter/material.dart';
import 'package:welcome_login_page_flutter/constants.dart';
import 'package:welcome_login_page_flutter/singin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/view.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "VISIT THE MOUNTAIN\n",
                          style: Theme.of(context).textTheme.headline5),
                      TextSpan(
                        text: "BUY THE TICKETS AND ENJOY",
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context){return SingInScreen();}));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(25),
                          color: kPrimaryColor),
                      child: Row(
                        children: [
                          Text("BUY TICKETS",style: Theme.of(context).textTheme.button.copyWith(color: Colors.black),),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

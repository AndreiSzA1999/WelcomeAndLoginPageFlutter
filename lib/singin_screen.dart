import 'package:flutter/material.dart';
import 'package:welcome_login_page_flutter/constants.dart';

class SingInScreen extends StatelessWidget {
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
                        fit: BoxFit.cover,
                        alignment: Alignment.centerRight)),
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SIGN IN",
                              style: (Theme.of(context).textTheme.headline5)),
                          Text("SING UP",
                              style: (Theme.of(context).textTheme.button)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:16.0),
                            child: Icon(Icons.alternate_email,color: kPrimaryColor,),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email Adress"
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:16.0),
                          child: Icon(Icons.lock,color: kPrimaryColor,),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Password"
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: Row(
                        children: [
                          Container(
                            padding:EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5)
                              ),
                            ),
                            child: Icon(Icons.android, color: Colors.white.withOpacity(.5)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding:EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white.withOpacity(.5)
                              ),
                            ),
                            child: Icon(Icons.chat, color: Colors.white.withOpacity(.5)),
                          ),
                          Spacer(),
                          Container(
                            padding:EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor
                            ),
                            child: Icon(Icons.arrow_forward,color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Login_Screen.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);

    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            backgroundColor: c,
            body: SafeArea(
                child: Center(
                    child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.only(top: 40.0),
              //  color: Colors.lightBlueAccent,
              child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: AnimatedOpacity(
                        opacity: 1.0,
                        duration: Duration(milliseconds: 1000),
                        // reverseDuration: Duration(milliseconds: 1000),

                        child: LogoImageWidget(),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(top: 10),
                      margin: EdgeInsets.all(30.0),
                      child: Center(

                        child: Text(
                          "We aim to collect data on various intercultural situations "
                          "for  understanding biased or discriminatory behaviour of people. \n \n"
                          "WeCare aims at analysing these behavioural patterns among users and use them to reduce "
                          "cultural differences. \n\n"
                          "If you wish to be a part of this cause, you can share your experiances with us by filling out a simple questionnaire. ",
                          //   textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            fontSize: 15.0,
                            color: c2,
                            decoration: TextDecoration.none,
                            fontFamily: "Oxygen",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    new Container(
                      child: ButtonTheme(
                        minWidth: 250.0,
                        child: RaisedButton(
                            child: Text("Begin Questionnaire"),
                            onPressed: (){
                              Navigator.of(context).pushNamed("/SecondPage");},
                            color: c2,
                            textColor: c,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))
                                ),
                      ),
                    ),
                    new Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Text(
                          "Login to Admin Dashboard",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: c2,
                            decoration: TextDecoration.none,
                            fontFamily: "Oxygen",
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    new Container(
                      // padding: EdgeInsets.only(top: 80),
                      child: ButtonTheme(
                        minWidth: 100.0,
                        height: 30,
                        child: RaisedButton(
                            child: Text("Admin Login"),
                            onPressed: _adminLogin,
                            color: c2,
                            textColor: c,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                      ),
                    ),
                  ]),
              //width: 192.0,
              //height: 192.0,
              //margin: EdgeInsets.all(50)
            )))));
  }
}

//_beginQues() {



_adminLogin() {}

class LogoImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage logoAsset = AssetImage('assets/Log2.png');
    Image image = Image(
      image: logoAsset,
      width: 250,
      alignment: Alignment.center,
    );

    return Container(child: image);
  }
}



class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color c = Color.fromRGBO(251, 234, 235, 1);
    Color c2 = Color.fromRGBO(47, 60, 126, 1);

    // TODO: implement build

        return new Scaffold(
          appBar: new AppBar( title: new Text("Second Page") , automaticallyImplyLeading: true, backgroundColor: c2 ),
            backgroundColor: c,

            body: SingleChildScrollView(

              child:  LoginScreen(),
            ),

        );
  }
}
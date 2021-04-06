// import 'dart:js';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       // appBar: AppBar(
//       //
//       //   title: Text(widget.title),
//       // ),
//       body: SafeArea(
//           child: Center(
//             child: ListView(
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _text(),
//                     _welcome_text(),
//                     _youroctors_text(),
//                     _circular_progres(),
//                     _form_field(),
//                     _Signin_button(),
//                   ],
//                 )
//               ],
//             ),
//           )),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// @override
// Widget _text() {
//   return Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           "Your",
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 40,
//               color: Color.fromRGBO(107, 148, 220, 1)),
//         ),
//         Text(
//           "Doctors",
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 40,
//               color: Color.fromRGBO(107, 148, 220, 1)),
//         ),
//         // Image.asset("assets/images/doctor_logo.png"),
//         // Image.network("src"),
//       ],
//     ),
//     margin: EdgeInsets.only(bottom:10,top: 20),
//   );
// }
// Widget _welcome_text() {
//   // var height = MediaQuery.of(context).size.height;
//   return Container(
//     child: Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
//       // style: GoogleFonts.poppins(
//       //   textStyle: TextStyle(
//       //       fontWeight: FontWeight.w700,
//       //       fontSize: 35,
//       //       fontFamily: 'Poppins',
//       //       letterSpacing: 1),
//       // ),
//     ),
//     margin: EdgeInsets.only(bottom: 30),
//   );
// }
// Widget _youroctors_text() {
//   return Container(
//     child: ConstrainedBox(
//       constraints: BoxConstraints(
//
//       ),
//       child: Text('YourDoctors - Your Practice, Your Patients,\nYour Peace Of Mind.',
//
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             ),
//       ),
//     ),
//
//   );
// }
// Widget _circular_progres() {
//   bool  visible = false;
//   return Container(
//     child: Visibility(
//       maintainSize: true,
//       maintainAnimation: true,
//       maintainState: true,
//       visible: visible,
//       child: Container(
//           child: CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation(Colors.blue),
//           )),
//     ),
//   );
// }
//
// Widget _form_field(){
//   bool _passwordvisible=false;
//   return Form(child: Column(children: [
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.blueGrey,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.only(left: 10),
//           border: InputBorder.none,
//           hintText: "Enter Your email address",
//           hintStyle: TextStyle(fontWeight: FontWeight.w400),
//         ),
//       ),
//       margin: EdgeInsets.only(left: 40,right: 40,top: 60,bottom: 50),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.blueGrey,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.only(left: 20,top: 15),
//           border: InputBorder.none,
//           suffixIcon: IconButton(
//             icon: Icon(
//               _passwordvisible ? Icons.visibility : Icons.visibility_off,
//               color: Colors.black54,
//             ),
//             onPressed: () {
//
//             },
//           ),
//           hintText: "Password",
//           hintStyle: TextStyle(fontWeight: FontWeight.w400),
//         ),
//       ),
//       margin: EdgeInsets.only(left: 40,right: 40,top: 60,bottom: 50),
//     ),
//
//   ],
//   ),
//   );
// }
// Widget _Signin_button(){
//   return Container(
//     decoration: BoxDecoration(
//       color: Colors.blueGrey,
//       borderRadius: BorderRadius.circular(10),
//
//     ),
//     height:50,
//       width: 500,
//       child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//   onPressed: (){},
//       color: Colors.blue,
//       child: Text("sign_in",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),),
//     margin: EdgeInsets.only(left: 40,right: 40,top: 50,bottom: 50),
//   );
// }
//
//

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_example/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final _formKey = GlobalKey<FormState>();

  bool _passwordvisible;
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  SharedPreferences logindata;
  bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordvisible=false;
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => MyDashboard()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(""),
      // ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _text(),
                  _welcome_text(),
                  _yourdoctors_text(),
                  // _form_field(),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: username_controller,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, top: 15),
                         border: InputBorder.none,
                          labelText: 'username',
                          hintStyle: TextStyle(fontWeight: FontWeight.w400)
                        ),
                      ),
                      margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        controller: password_controller,
                        obscureText: !_passwordvisible,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20, top: 15),
                            border: InputBorder.none,suffixIcon: IconButton(
                          icon: Icon(
                            _passwordvisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordvisible = !_passwordvisible;
                            });
                          },
                        ),

                            labelText: 'Password',
                            hintStyle: TextStyle(fontWeight: FontWeight.w400)
                        ),
                      ),
                      margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
                    ),
                  ],
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height *0.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    String username = username_controller.text;
                    String password = password_controller.text;

                    if (username != '' && password != '') {
                      // if (_formKey.currentState.validate()) {
                        print('Successfull');
                        logindata.setBool('login', false);

                        logindata.setString('username', username);

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyDashboard()));
                      }
                    // }
                  },
                  child: Text("Log-In"),
                ),
                margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget _text() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Your",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color.fromRGBO(107, 148, 220, 1)),
        ),
        Text(
          "Doctors",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color.fromRGBO(107, 148, 220, 1)),
        ),
        // Image.asset("assets/images/doctor_logo.png"),
        // Image.network("src"),
      ],
    ),
    margin: EdgeInsets.only(bottom:10,top: 20),
  );
}

Widget _welcome_text() {
  // var height = MediaQuery.of(context).size.height;
  return Container(
    child: Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),
      // style: GoogleFonts.poppins(
      //   textStyle: TextStyle(
      //       fontWeight: FontWeight.w700,
      //       fontSize: 35,
      //       fontFamily: 'Poppins',
      //       letterSpacing: 1),
      // ),
    ),
    margin: EdgeInsets.only(bottom: 30),
  );
}

Widget _yourdoctors_text() {
  return Container(
    child: ConstrainedBox(
      constraints: BoxConstraints(

      ),
      child: Text('YourDoctors - Your Practice, Your Patients,\nYour Peace Of Mind.',

        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            ),
      ),
    ),

  );
}


}
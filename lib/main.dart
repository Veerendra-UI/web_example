//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:web_example/home.dart';
//
// void main() => runApp(MyApp());
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
//       home: MyLoginPage(),
//     );
//   }
// }
//
// class MyLoginPage extends StatefulWidget {
//   @override
//   _MyLoginPageState createState() => _MyLoginPageState();
// }
//
// class _MyLoginPageState extends State<MyLoginPage> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final _formKey = GlobalKey<FormState>();
//
//   bool _passwordvisible;
//   final username_controller = TextEditingController();
//   final password_controller = TextEditingController();
//
//   SharedPreferences logindata;
//   bool newuser;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _passwordvisible=false;
//     check_if_already_login();
//   }
//
//   void check_if_already_login() async {
//     logindata = await SharedPreferences.getInstance();
//     newuser = (logindata.getBool('login') ?? true);
//
//     print(newuser);
//     if (newuser == false) {
//       Navigator.pushReplacement(
//           context, new MaterialPageRoute(builder: (context) => MyDashboard()));
//     }
//   }
//
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     username_controller.dispose();
//     password_controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text(""),
//       // ),
//       body: SafeArea(
//         child: Center(
//           child: ListView(
//             children: <Widget>[
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   _text(),
//                   _welcome_text(),
//                   _yourdoctors_text(),
//                   // _form_field(),
//                 ],
//               ),
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: TextFormField(
//                         controller: username_controller,
//                         decoration: InputDecoration(
//                           contentPadding: EdgeInsets.only(left: 20, top: 15),
//                          border: InputBorder.none,
//                           labelText: 'username',
//                           hintStyle: TextStyle(fontWeight: FontWeight.w400)
//                         ),
//                       ),
//                       margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: TextFormField(
//                         controller: password_controller,
//                         obscureText: !_passwordvisible,
//                         decoration: InputDecoration(
//                             contentPadding: EdgeInsets.only(left: 20, top: 15),
//                             border: InputBorder.none,suffixIcon: IconButton(
//                           icon: Icon(
//                             _passwordvisible ? Icons.visibility : Icons.visibility_off,
//                             color: Colors.black54,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _passwordvisible = !_passwordvisible;
//                             });
//                           },
//                         ),
//
//                             labelText: 'Password',
//                             hintStyle: TextStyle(fontWeight: FontWeight.w400)
//                         ),
//                       ),
//                       margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
//                     ),
//                   ],
//                 ),
//               ),
//
//               Container(
//                 height: MediaQuery.of(context).size.height *0.05,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: FlatButton(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//                   textColor: Colors.white,
//                   color: Colors.blue,
//                   onPressed: () {
//                     String username = username_controller.text;
//                     String password = password_controller.text;
//
//                     if (username != '' && password != '') {
//                       // if (_formKey.currentState.validate()) {
//                         print('Successfull');
//                         logindata.setBool('login', false);
//
//                         logindata.setString('username', username);
//
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => MyDashboard()));
//                       }
//                     // }
//                   },
//                   child: Text("Log-In"),
//                 ),
//                 margin: EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 30),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _text() {
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
//
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
//
// Widget _yourdoctors_text() {
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
//
//
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        leading: Icon(Icons.filter_vintage),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Form-Validation In Flutter ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value.isEmpty ||
                      // !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@gmail.com || @yahoo.com+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              //box styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              //text input
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {},
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a valid password!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

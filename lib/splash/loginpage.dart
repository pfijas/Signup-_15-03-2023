import 'package:flutter/material.dart';
import 'package:restuarant/splash/signup.dart';
import 'HomePage.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 50,
            margin: EdgeInsets.symmetric(vertical: 100,horizontal: 100),
            child: Column(
              children: <Widget>[
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                  child: TextField(

                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                  ),
                ),
                TextButton(
                  onPressed: (){
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(40)),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:40,
                    onPressed: (){},
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    // onPressed: () {
                    //   // Navigator.push(
                    //   //     context, MaterialPageRoute(builder: (_) => HomePage()));
                    // },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 16,
                          fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Create Accoun",
                    ),
                    WidgetSpan(child: InkWell(child:
                      Text("Sign Up"),
                    onTap: () => setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPage()));
                    }),
                    )
                    )
                  ],


                ),),
                Text('Sign up? Create Account')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
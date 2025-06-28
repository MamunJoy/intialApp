import 'package:flutter/material.dart';

class showDailouge extends StatefulWidget {
  const showDailouge({super.key});

  @override
  State<showDailouge> createState() => _showDailougeState();
}

class _showDailougeState extends State<showDailouge> {

  void showDailougeBar () {
    showDialog(
      // barrierColor: Colors.amber,
      barrierDismissible: false,
        context: context, builder: (contxt) {
      return AlertDialog(
        title: Text('Hello, this is AlertBox',
            style: TextStyle(color: Colors.white)),
        content: Text('Developed By Mamun',
            style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey,
        // shadowColor: Colors.amber,
        // elevation: 100,
        actions: [
          IconButton(onPressed: () {
            print('Its ok');
          } , icon: Icon(Icons.done)),
          IconButton(onPressed: () {
            Navigator.pop(context);
          } , icon: Icon(Icons.close)),
        ],
      );
    }
    );
  }

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Programming worm')),
        backgroundColor: Colors.blue,
      ),

      body: InkWell(
        onTap: () {
          if (formKey.currentState!.validate()) {
            showDailougeBar();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty) {
                      return 'Email can not be Empty';
                    }
                  },
                  // key: formKey,
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.green,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    label: Text('Email', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    prefix: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.email),
                    ),
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(

                      fontWeight: FontWeight.bold
                    )
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                TextFormField(

                  validator: (value) {
                    if (value!.length < 6) {
                      return 'Password Should be more then 6 digit';
                    };
                  },

                  obscureText: true,
                  key: formKey,
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.green,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    label: Text('Password', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    prefix: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.password),
                    ),
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(

                      fontWeight: FontWeight.bold
                    )
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Center(child: Text('Log In',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//
// if (formKey.currentState!.validate()) {
// }
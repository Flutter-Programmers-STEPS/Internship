import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool checkValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: Text(
                "Hey there,",
                style: TextStyle(fontSize: 15),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: Text(
                "Create an Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            Row(
              children: [
                Checkbox(value: checkValue,
                    onChanged: (value) {
                      checkValue=value!;
                    },),
                SizedBox(
                  width: 400,
                  child: Text("By creating an account, you agree to our Conditions of Use and Privacy Notice",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
              ]
      ),
    );
  }
}

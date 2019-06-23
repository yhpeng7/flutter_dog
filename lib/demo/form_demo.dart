import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[RegisterForm()],
            ),
          )),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
//    textEditingController.text = '你好鸭！';
    textEditingController.addListener(() {
      debugPrint('Listener:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
//      onChanged: (value){
//        debugPrint('input:$value');
//      },
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title',
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.yellow),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;

  //设置初始不自动验证，提交后才自动验证。
  bool autoValidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Registering...'),
      ));
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            //helperText：提示文字出现的更自然一些
            decoration: InputDecoration(labelText: 'Username', helperText: ''),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            autovalidate: autoValidate,
          ),
          TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(labelText: 'Password', helperText: ''),
              onSaved: (value) {
                password = value;
              },
              validator: validatePassword,
              autovalidate: autoValidate),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice/ownPractice/ROute/screens/homeScreen.dart';

class LoginHome extends StatefulWidget {
  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  //const LoginHome({super.key});
  final uname = TextEditingController();

  final pwd = TextEditingController();
  bool _isDatamatched = true;
  //the visibilty of that text when the username and password is off
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) //this is the build function context
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          //we need form for validator to work
          key: _formKey, //we need key for validation
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator:
                    (value) //Required string is we dont have stirng jsut give_inside the bracket{
                    {
                  if (value == null || value.isEmpty) {
                    return 'username should not be null or empty';
                  } else {
                    return null;
                  }
                }, //to validate the username field
                controller: uname,
                decoration: InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  {
                    if (value == null || value.isEmpty) {
                      return 'password SHOULD NOT BE EMPTY';
                    } else {
                      return null;
                    }
                  }
                },
                obscureText: true,
                controller: pwd,
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, //to show the error message nearby login button
                children: [
                  //visibility is a widget we cna decide whether the child of visibilty have to shown or not
                  Visibility(
                    visible:
                        !_isDatamatched, //! not operator has been used here
                    //to make the _isdataAmatched into false
                    ///when the condition is failed it should show the error message
                    child: Text('Username does not match'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //to run the validator
                        checkLogin(
                            context); //passsing the build function's context
                      } else {
                        print('data not to b empty');
                      }
                    },
                    icon: const Icon(Icons.check),
                    label: const Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(
      BuildContext
          ctxt) //buildcontext is needed for snackbar so we are give one parameter name ctxt to receive above build function context
  {
    final _userName = uname.text;
    final _password = pwd.text;
    if (_userName == _password) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreenLogin()));
    } else {
      //snackBar
      //for snackbar we need build context
      //so we are passing argument in this above  function
      //as we are accesing the snack bar outside the scaffold we are using
      //Scaffold.messenger
      //if we giving inside scaffold then no nedd of messenger
      final _errorMessage = 'Username does not match';
      ScaffoldMessenger.of(ctxt).showSnackBar(
        SnackBar(
          content: Text(_errorMessage),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
        ),
      );

      //alert dialogue (i.e.,)pop up above the screen
      showDialog(
        context:
            ctxt, //checkLogin finction parameter name is ctxt ,in which we pass build function context from above
        builder: (ctxt1) => AlertDialog(
          title: const Text("username does not match"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(
                      ctxt1); //why giving ctxt1  means alertdialogue is inside the builder function that has ctxt1 parameter thats why
                },
                child: const Text("close"))
          ],
        ),
      );

      ///when the login button is pressed the ui has been changing by giving or give not the text
      ///so we are giving setState
      ///to made the changes
      setState(() {
        _isDatamatched = false;
      });
    }

    //show text below
  }
}

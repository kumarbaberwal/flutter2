import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'Form',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter First Name'),
                key: const ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First Name Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  firstname = newValue.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Last Name'),
                key: const ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last Name Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  lastname = newValue.toString();
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter Email'),
                key: const ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email Should Not Be Empty!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  email = newValue.toString();
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Enter Password'),
                key: const ValueKey('password'),
                validator: (value) {
                  if (value.toString().length <= 5) {
                    return 'Password Contains Minimum 6 Characters!';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  password = newValue.toString();
                },
              ),
              TextButton(
                  onPressed: () {
                    trysubmit();
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

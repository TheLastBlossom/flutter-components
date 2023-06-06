import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Ervin',
      'last_name': 'Diaz',
      'email': 'ervin@ervin.com',
      'password': '12345',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                  helperText: 'Name',
                  hintText: 'User Name',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Lastname',
                  hintText: 'User Lastname',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'User Email',
                  formProperty: 'email',
                  formValues: formValues,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'User Password',
                  formProperty: 'password',
                  formValues: formValues,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      child: Text('Admin'),
                      value: 'Admin',
                    ),
                    DropdownMenuItem(
                      child: Text('Superuser'),
                      value: 'Superuser',
                    ),
                    DropdownMenuItem(
                      child: Text('Developer'),
                      value: 'Developer',
                    ),
                    DropdownMenuItem(
                      child: Text('Jr. Developer'),
                      value: 'Jr. Developer',
                    ),
                  ],
                  onChanged: (String? value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    focusNode: FocusNode(),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print("Form is not valid");
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Send')),
                    ))
              ]),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class Signupcredit2 extends StatelessWidget {
  const Signupcredit2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign UP Via E-mail')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter email' : null;
                        },
                      ),

                      SizedBox(height: 30),

                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter password'
                                  : null;
                            },
                          ),
                        ],
                      ),

                      SizedBox(height: 75),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: Text('Proceed'),
                          color: Colors.blue,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

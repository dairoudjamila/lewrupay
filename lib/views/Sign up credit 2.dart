import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:lewrupay/views/Home.dart';
=======
import 'package:lewrupay/views/Main%20Home.dart';
>>>>>>> 54784f95b9b39e8a72cbe9ad28dfa19da32accf6

class Onboarding2 extends StatelessWidget {
  const Onboarding2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
       body: 
      SingleChildScrollView(
        
        child: 
          Padding(
            padding: EdgeInsets.all(50.0,),
           child: Column(

             children: [

          Center( 
            child:SizedBox(

            width: 550,
            height: 300,
          
            child: Image.asset("image/onboarding2 photo.png")
          
           )
            ),
            SizedBox(height: 90,),
           Text(
            "LewruPay is a mobile digital finance",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,
           ),

             SizedBox(height: 150),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
               

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                  
                  
                  
                  
                  onPressed: () {
                  Get.to( () =>Home());
                }, 
                child: Text("start",style: TextStyle(fontSize: 20),)
                )
              ],
            )

             ]
           )
          )
      )




=======
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
                            obscureText: true,

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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainHome(),
                              ),
                            );
                          },
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
>>>>>>> 54784f95b9b39e8a72cbe9ad28dfa19da32accf6
    );
  }
}



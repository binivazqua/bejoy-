import 'package:flutter/material.dart';
import 'package:flutterin/blocks/navHomePage.dart';
import 'package:flutterin/components/logoTile.dart';
import 'package:flutterin/components/myButton.dart';
import 'package:flutterin/components/textField.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:  
              Column( // in Scaffold 'child' changes to 'body'.
                // ALIGN ITEMS -> CSS
                        
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                    Icons.interests,
                    size: 100,
                    color: Colors.purple[100],
                    
                              ),
                  ),
                const Text('Hello again!',
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                const Text('Login to Continue',
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                textField(
                  hintDesiredText: 'Username',
                  controller: usernameController,
                  obscureText: false,
                  ),
                textField(
                  hintDesiredText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  
                  ),
                TextButton(
                  onPressed: () {
                    print('Button clicked.');
                  }, 
                  child: const Text('New to Bejoy? Register!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),

                myButton(),
                /*
                ElevatedButton(
                  onPressed: ()
                {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const navHomePage();

                        
                     }
                    ));
                    Navigator.of(context).pushNamed(
                      '/home'
                    );
                  
                },
                 style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.yellow[500])
                 ),
                 child: const Text('Go!',
                    style: TextStyle(
                    color: Colors.black,
                 ),
                 ),
                 ),

                 */
                 const Text('or ontinue with',
                    style: TextStyle(
                      fontSize: 12,
                      height: 3,
                    ),
                 ),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    logoTile(imagePath:'lib/images/google.png'),
                    SizedBox(width: 20.0),
                    logoTile(imagePath: 'lib/images/apple.png')
                  ],
                 ),
                  
                  
              ],
              ),
            
        ),
      
    );
  }

  
}
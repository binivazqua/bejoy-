
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/homePage.dart';
import 'package:flutterin/components/logoTile.dart';
import 'package:flutterin/components/textField.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

 

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.red,
          body: 
              Center(
                child: Column( // in Scaffold 'child' changes to 'body'.
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
                  ElevatedButton(
                    onPressed: ()
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const homePage();
                        
                          
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
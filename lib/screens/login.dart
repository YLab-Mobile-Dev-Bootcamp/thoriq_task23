import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to apps',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image(
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('ENTER'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/catalog');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
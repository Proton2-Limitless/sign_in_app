import 'package:flutter/material.dart';
import 'package:login/screens/sign_in.dart';
import 'package:login/screens/sign_up.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.height * 0.42;

    signin() async {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const SignIn(),
        ),
      );
    }

    signup() async {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const SignUp(),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Column(
          children: [
            Center(
              child: Transform.rotate(
                angle: 135 * (3.14 / 180),
                child: Icon(
                  Icons.fitness_center,
                  size: 150,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            Center(
              child: Text(
                "FITNESS CLUB",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        const SizedBox(height: 120),
        Center(
          child: Text(
            "Welcome Back",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 48,
                ),
          ),
        ),
        const SizedBox(height: 60),
        TextButton(
          onPressed: signin,
          style: TextButton.styleFrom(
            minimumSize: Size(buttonWidth, 85),
            backgroundColor: Colors.transparent,
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          child: Text(
            "SIGN IN",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: signup,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(buttonWidth, 85),
            backgroundColor: Theme.of(context).colorScheme.background,
          ),
          child: Text(
            "SIGN UP",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  "Login With Social Media",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 28,
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.telegram,
                    size: 50,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.wechat,
                    size: 50,
                    color: Theme.of(context).colorScheme.background,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.facebook,
                    size: 50,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}

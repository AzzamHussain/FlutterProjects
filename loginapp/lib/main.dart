
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconanimationController;
  Animation <double> _iconanimation;

  @override
  void initState(){
    super.initState();
    _iconanimationController=new AnimationController(vsync: this,
      duration: new Duration(milliseconds: 500),
      );
      _iconanimation=new CurvedAnimation( parent: _iconanimationController,
         curve: Curves.bounceOut);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: new AssetImage("assets/splash.jpg"),
            fit: BoxFit.cover,
            color: Color.fromARGB(255, 163, 172, 164),
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               AnimatedBuilder(
                animation: _iconanimation,
                // builder: (BuildContext context, Widget child) {
                //   return Transform.scale(
                //     scale: _iconanimation.value,
                //     child: child,
                //   );
                // },
    ;          child: FlutterLogo(
                size: 80,
              ),
               ),
            ],
          )
        ],
      ),
    );
    }
    }

    888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888



    import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(primarySwatch: Colors.blue));
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  AnimationController _iconanimationController;
  Animation<double> _iconanimation;

  @override
  void initState() {
    super.initState();
    _iconanimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _iconanimation = CurvedAnimation(
      parent: _iconanimationController,
      curve: Curves.bounceOut,
    );
    _iconanimationController.forward(); // Start the animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/splash.jpg"),
            fit: BoxFit.cover,
            color: Color.fromARGB(255, 163, 172, 164),
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedBuilder(
                animation: _iconanimationController,
                builder: (BuildContext context, Widget child) {
                  return Transform.scale(
                    scale: _iconanimation.value,
                    child: FlutterLogo(
                      size: 80,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _iconanimationController.dispose(); // Dispose the animation controller
    super.dispose();
  }
}


          //  image: new AssetImage("assets/splash.jpg"),


part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Out'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Sign Out'),
            onPressed: () {
              AuthServices.signOut();
            }),
      ),
    );
  }
}

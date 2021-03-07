part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16, top: 70),
            child: Text(
              'New Experience',
              style: blackTextFont.copyWith(fontSize: 20),
            ),
          ),
          Text(
            'Watch a new movie much\neasier than any before',
            style: grayTextFont.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Container(
              margin: EdgeInsets.only(bottom: 19, top: 90),
              width: 250,
              height: 46,
              child: RaisedButton(
                child: Text(
                  'Get Started',
                  style: whiteTextFont.copyWith(fontWeight: FontWeight.w400),
                ),
                color: mainColor,
                onPressed: () {},
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: grayTextFont.copyWith(fontWeight: FontWeight.w400),
              ),
              GestureDetector(
                onTap: () {
                  context.bloc<PageBloc>().add(GoToLoginPage());
                },
                child: Text(
                  'Sign In',
                  style: purpleTextFont,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

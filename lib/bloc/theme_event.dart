part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  final ThemeData themeData;

  const ThemeEvent(this.themeData);

  @override
  List<Object> get props => [themeData];
}

class ChangeTheme extends ThemeEvent {
  ChangeTheme(ThemeData themeData) : super(themeData);
}

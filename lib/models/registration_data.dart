part of 'models.dart';

class RegitsrationData {
  String name;
  String email;
  String password;
  List<String> selectedGenres;
  String selectedLang;
  File profileImage;

  RegitsrationData(
      {this.name = '',
      this.email = '',
      this.password = '',
      this.selectedGenres = const [],
      this.selectedLang = '',
      this.profileImage});
}

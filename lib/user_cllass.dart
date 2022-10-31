class User{
  final String image;
  final String name;
  final String email;
  final String about;

  const User({
    required this.image,
    required this.name,
    required this.email,
    required this.about,
  });

}

class Usersetup {
  static const myUser = User(
    image: https://as1.ftcdn.net/v2/jpg/03/46/83/96/1000_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg
    name: 'Kelley'
    email: 'kelley@gmail.com'
    about: 'This is all hardcoded'
  );
}

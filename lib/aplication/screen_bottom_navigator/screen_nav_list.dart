abstract class NavScreen {
  final int index;
  final String name;

  const NavScreen({
    required this.index,
    required this.name,
  });

  String get nameS => name;
  int get indexS => index;
}

class HomeScr extends NavScreen {
  const HomeScr() : super(index: 0, name: 'HomeScr');
}

class HomeDisplayObjectScr extends NavScreen {
  const HomeDisplayObjectScr() : super(index: 0, name: 'HomeDisplayObjectScr');
}

class RequestScr extends NavScreen {
  const RequestScr() : super(index: 1, name: 'RequestScr');
}

class ProfileScr extends NavScreen {
  const ProfileScr() : super(index: 2, name: 'ProfileScr');
}

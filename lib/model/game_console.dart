class GameConsole {
  final String title;
  final String image;
  final String description;
  const GameConsole({required this.title, required this.image, required this.description});

  @override
  String toString() {
    return 'GameConsole(title: $title, image: $image, description: $description)';
  }
}
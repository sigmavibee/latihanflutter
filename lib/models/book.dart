class BookList {
  String imageUrl;
  String writers;
  String title;

  BookList(
      {required this.imageUrl, required this.writers, required this.title});
}

List<BookList> bookLists = [
  BookList(
      imageUrl: 'assets/images/trending-1.png',
      writers: 'Mick Schumacher',
      title: 'Struktur Ekonomi'),
  BookList(
      imageUrl: 'assets/images/trending-2.png',
      writers: 'Mika Hakkinen',
      title: 'Book Title'),
  BookList(
      imageUrl: 'assets/images/trending-4.png',
      writers: 'Lewis Hamilton',
      title: 'Verstappen'),
];

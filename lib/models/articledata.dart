List<ArticleData> articles = [
  ArticleData(
    title: 'Experience Canyoneering to Kawasan Falls',
    author: 'Franz Pueblos',
    date: 'Nov 30, 2023',
    image: 'assets/Experience-canyoneering.jpg',
    authorimage: 'assets/Author-1.jpg',
  ),
  ArticleData(
    title: 'Explore the Beaches of Bantayan Island',
    author: 'Andrey Pueblos',
    date: 'Nov 8, 2023',
    image: 'assets/2-Bantayan-Island.jpg',
    authorimage: 'assets/Author-2.jpg',
  ),
  ArticleData(
    title: 'Discover the Vibrant Sumilon Island',
    author: 'Francisko Nadela',
    date: 'Nov 11, 2023',
    image: 'assets/3-Sumilon Island.jpg',
    authorimage: 'assets/Author-3.jpg',
  ),
  ArticleData(
    title: 'Try Water Adventures in Camotes Island',
    author: 'Francis Pueblos',
    date: 'Dec 25, 2023',
    image: 'assets/4-Camotes Island.jpg',
    authorimage: 'assets/Author-4.jpg',
  ),
  ArticleData(
    title: 'Dive and See Thresher Sharks in Malapascua',
    author: 'Franco Pueblos',
    date: 'Jan 1, 2024',
    image: 'assets/5-Malapascua.jpg',
    authorimage: 'assets/Author-5.jpg',
  ),
  // Add more articles here
];

class ArticleData {
  final String title;
  final String author;
  final String date;
  final String image;
  final String authorimage;

  ArticleData({
    required this.title,
    required this.author,
    required this.date,
    required this.image,
    required this.authorimage,
  });
}

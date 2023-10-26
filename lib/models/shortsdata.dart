List<ShortsData> shorts = [
  ShortsData(
    title: 'Whale Shark Watching Tour',
    views: '1,423',
    image: 'assets/Shorts-1.jpg',
  ),
  ShortsData(
    title: 'Magellans Cross Tour',
    views: '3,113',
    image: 'assets/Shorts-2.jpg',
  ),
  ShortsData(
    title: 'MoalBoal Sardines Run Tour',
    views: '2,513',
    image: 'assets/Shorts-3.jpg',
  ),
  ShortsData(
    title: 'Basilica del Santo Nino Tour',
    views: '2,172',
    image: 'assets/Shorts-4.jpg',
  ),
  ShortsData(
    title: 'Simala Shrine Tour',
    views: '5,952',
    image: 'assets/Shorts-5.jpg',
  ),
  // Add more articles here
];

class ShortsData {
  final String title;
  final String image;
  final String views;

  ShortsData({
    required this.title,
    required this.image,
    required this.views,
  });
}

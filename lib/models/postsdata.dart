List<PostsData> posts = [
  PostsData(
    title: 'Take a Leisurely Hike to Osmeña Peak',
    type: 'Article: Entertainment',
    image: 'assets/1-Osmena Peak.jpg',
    time: ' 09:10 am',
    date: ' 20th January',
  ),
  PostsData(
    title: 'Go on a Pilgrimage to Simala Shrine',
    type: 'Article: Religion',
    image: 'assets/2-Simala Shrine.jpg',
    time: ' 11:35 pm',
    date: ' 30th September',
  ),
  PostsData(
    title: 'Go on a Lechon Food Trip',
    type: 'Article: Food',
    image: 'assets/3-Lechon.jpg',
    time: ' 08:16 am',
    date: ' 19th March',
  ),
  PostsData(
    title: 'Check out Spanish Artifacts at Fort San Pedro',
    type: 'Article: History',
    image: 'assets/4-Fort San Pedro.jpg',
    time: ' 12:00 am',
    date: ' 31th August',
  ),
  PostsData(
    title: 'Go Island-Hopping in Mactan',
    type: 'Article: Travel',
    image: 'assets/5-Mactan Island.jpg',
    time: ' 03:30 pm',
    date: ' 25th December',
  ),
  // Add more articles here
];

class PostsData {
  final String title;
  final String image;
  final String type;
  final String date;
  final String time;

  PostsData({
    required this.title,
    required this.image,
    required this.type,
    required this.date,
    required this.time,
  });
}

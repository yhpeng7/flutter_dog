class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: 'Candy Shop',
      author: 'Mohamed Chahin',
      imageUrl: 'https://pic.qqtn.com/up/2018-3/20183261615489097.jpg'
  ),
  Post(
      title: 'Childhood in a picture',
      author: 'Mohamed Chahin',
      imageUrl: 'https://pic.qqtn.com/up/2018-3/20183261615489097.jpg'
  ),
  Post(
      title: 'Contained',
      author: 'Mohamed Chahin',
      imageUrl: 'https://pic.qqtn.com/up/2018-3/20183261615489097.jpg'
  )
];
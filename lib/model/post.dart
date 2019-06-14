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
      imageUrl: 'https://cdn.pixabay.com/photo/2019/06/09/12/42/architecture-4262008__480.jpg'
  ),
Post(
      title: 'Childhood in a picture',
      author: 'Mohamed Chahin',
      imageUrl: 'https://cdn.pixabay.com/photo/2019/06/02/17/33/portrait-4246954__480.jpg'
  ),
  Post(
      title: 'Contained',
      author: 'Mohamed Chahin',
      imageUrl: 'https://cdn.pixabay.com/photo/2019/06/07/21/03/dog-4259058__480.jpg'
  )
];
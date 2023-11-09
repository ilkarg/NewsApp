class News {
  final String title;
  final String description;
  final String body;

  News({required this.title, required this.description, required this.body});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'], 
      description: json['description'],
      body: json['body']
    );
  }
}
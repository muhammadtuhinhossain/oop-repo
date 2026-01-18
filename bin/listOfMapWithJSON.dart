import 'dart:convert';

void main(){
  final jsonResponse=getBookResponse();
  List<dynamic> bookListResponse=jsonResponse['data'];
  print(bookListResponse);

  List<Book> books=bookListResponse.map((json){
    return Book(
        title: json['title'],
        authorName: json['authorName'],
        price: json['price'].toDouble()
    );
  }).toList();

  books.forEach((books){
    print('title:${books.title},authorName:${books.authorName},price:${books.price}');
  });
}
class Book {
  String title;
  String authorName;
  double price;
  Book({required this.title, required this.authorName, required this.price});
}
Map<String, dynamic> getBookResponse(){
  return {
    'message':'succsusfuly get the Book data',
    'data':[
      {
       'title':'420 model',
       'authorName':'Nokia',
        'price':50,
      },
      {
        'title':'abc',
        'authorName':'Iphone',
        'price':20.00,
      },
      {
        'title':'Turbo3',
        'authorName':'Redmi',
        'price':45,
      },
      {
        'title':'32pro',
        'authorName':'Oppo',
        'price':64,
      },
      {
        'title':'M10',
        'authorName':'Samsung',
        'price':57,
      },
    ],
    'error':null,
  };
}
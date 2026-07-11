class Book{
  String? title;
  String? author;
  int? price;
  
  Book({this.title,this.author,this.price});
   

void showDetail(){
  print("Title: $title, Author: $author, Price: $price");
}
}
void main(){
  Book b = Book(title: "Emotional First Aid",author: "Guy Winch",price: 264);
  b.showDetail();
}
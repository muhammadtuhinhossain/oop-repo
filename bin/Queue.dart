void main(){
  Queue<int> queue=Queue();
  queue.enqueue(5);
  queue.enqueue(8);
  queue.enqueue(3);
  queue.enqueue(12);
  print(queue);

  int dequeueItem= queue.dequeue();
  print(queue);
  // queue.dequeue();
  // print(queue);
  // queue.dequeue();
  // print(queue);

  int? toppedItem= queue.dequeue();
  print('The dequeue item is:$toppedItem');
}
class Queue<T>{
  final List<T> _items=[];
  void enqueue(T value){
    _items.add(value);
  }
  T dequeue(){
    if(isEmpty){
      throw Exception('Queue is Empty');
    }
    return _items.removeAt(0);
  }
  T? peek(){
    if(isEmpty){
      return null;
    }
    return _items.first;
  }
  bool get isEmpty=> _items.isEmpty;
  bool get isNotEmpty=> !isEmpty;

  void clear(){
    _items.clear();
  }
  String toString(){
    return _items.toString();
  }
}
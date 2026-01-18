void main() {
  Stack<int> stack=Stack();
  stack.push(5);
  stack.push(8);
  stack.push(3);
  stack.push(12);
  print(stack);

  int poppedItem=stack.pop();
  print(stack);
  stack.pop();
  stack.pop();
  print(stack);
  // stack.pop();
  // stack.pop();
  // print(stack);

  int? toppedItem= stack.peek();
  print('The topped item is:$toppedItem');
}
class Stack<T>{
  final List<T> _items=[];
  void push(T value){
    _items.add(value);
  }
  T pop(){
    if(isEmpty){
      throw Exception('Stack is Empty');
    }
    return _items.removeLast();
  }
  T? peek(){
    if(isEmpty){
      return null;
    }
    return _items.last;
  }
  bool get isEmpty=> _items.isEmpty;
  bool get isNotEmpty=> !isEmpty;

  void clear(){
    _items.clear();
  }
  String toString(){
    return '-----Top-------\n'
        '${_items.reversed.join('\n')}\n'
        '-------------------';
  }
}

import 'dart:html';

InputElement todoInput;
UListElement todoItems;

void main() {
  todoInput = querySelector('#todo-input');
  todoItems = querySelector('#todo-items');
  
  todoInput.onChange.listen( addItem );
}

void addItem( Event e ){
    var newItem = new UListElement();
    newItem.text = "" + todoInput.value;
    todoInput.value = '';
    todoItems.children.add(newItem);
}
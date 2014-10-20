import 'dart:html';

InputElement todoItemAdd;
InputElement todoListAdd;
UListElement todoItems;
UListElement todoLists;

void main() {
  todoItemAdd = querySelector('#todo-new-item');
  todoItems = querySelector('#todo-items');
  
  todoListAdd = querySelector('#todo-new-list');
  todoLists = querySelector('#todo-lists');
  
  todoItemAdd.onChange.listen( addItem );
  todoListAdd.onChange.listen( addList );
}

void addItem( Event e ){
    var newItem = new UListElement();
    newItem.text = "" + todoItemAdd.value;
    todoItemAdd.value = '';
    todoItems.children.add(newItem);
}

void addList( Event e ){
    var newList = new UListElement();
    newList.text = "" + todoListAdd.value;
    todoListAdd.value = '';
    todoLists.children.add(newList);
}
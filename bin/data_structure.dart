import 'package:data_structure/data_structure.dart';

void main(List<String> arguments) {
  print('--- Stack Challenges ---');
  reverseList([1, 2, 3, 4, 5]); 
  print(isBalanced("(())")); 
  print(isBalanced("(()")); 

  print('\n--- Linked List Challenges ---');

  Node linkedList = Node(1, Node(2, Node(3, Node(4, Node(5)))));
  print('Print in Reverse:');
  printReverse(linkedList);

  print('\nFind Middle Node:');
  Node? middle = findMiddle(linkedList);
  if (middle != null) print('Middle: ${middle.data}');

  print('\nReverse Linked List:');
  Node? reversed = reverseLinkedList(linkedList);
  printList(reversed);

  print('\nRemove All Occurrences (value = 3):');
  Node listWithDuplicates = Node(3, Node(1, Node(3, Node(2, Node(3)))));
  Node? cleaned = removeAllOccurrences(listWithDuplicates, 3);
  printList(cleaned);
}

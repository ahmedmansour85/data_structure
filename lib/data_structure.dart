// تحديات Stack

void reverseList(List<int> list) {
  List<int> stack = [];
  for (var element in list) {
    stack.add(element);
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

bool isBalanced(String input) {
  List<String> stack = [];
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

// تعريف Node لقائمة Linked List
class Node {
  int data;
  Node? next;
  Node(this.data, [this.next]);
}

// Linked List

void printReverse(Node? head) {
  if (head == null) return;
  printReverse(head.next);
  print(head.data);
}

Node? findMiddle(Node? head) {
  if (head == null) return null;
  Node? slow = head;
  Node? fast = head;
  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }
  return slow;
}

Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  while (current != null) {
    Node? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev;
}

Node? removeAllOccurrences(Node? head, int value) {
  while (head != null && head.data == value) {
    head = head.next;
  }
  Node? current = head;
  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }
  return head;
}

void printList(Node? head) {
  while (head != null) {
    print(head.data);
    head = head.next;
  }
}

import UIKit

 struct Queue<T> {
  fileprivate var array = [T]()
  
  var isEmpty: Bool {
    return array.isEmpty
  }
  
  /// This method is used for adding element to the queue
  mutating func enqueue(_ element: T) {
   array.append(element)
  }
  /// This method is used for removing element from the queue
  mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    }
    return array.remove(at: 0)
    
  }
}
extension Queue: CustomStringConvertible {

  var description: String {
  
    let topDivider = "---Queue---\n"
    let stackElements = array.map { "\($0)" }.joined(separator: "\n")
    let bottomDivider = "\n-----------\n"

    return topDivider + stackElements + bottomDivider
  }
}

var myQueue = Queue<String>()
myQueue.enqueue("Shakti")
myQueue.enqueue("Prakash")
myQueue.enqueue("Srichandan")
myQueue.dequeue()
print(myQueue)

var myQueueInt = Queue<Int>()
myQueueInt.enqueue(1)
myQueueInt.enqueue(2)
myQueueInt.dequeue()
print(myQueueInt)


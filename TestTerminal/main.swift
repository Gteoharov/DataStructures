//
//  main.swift
//  TestTerminal
//
//  Created by Georgi Teoharov on 12.04.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation


func printInReverse<T>(_ node: Node<T>?) {
    guard let node = node else { return }
    printInReverse(node.next)
    print(node.value)
}

func printInReverse<T>(_ list: LinkedList<T>) {
    printInReverse(list.head)
}

var linkedList = LinkedList<Int>()
linkedList.push(3)
linkedList.push(2)
linkedList.push(1)
print(linkedList)

func printInRecursive(num: Int) {
    if num > 0 {
        printInRecursive(num: num - 1)
    }
    print(num)
}

func factorielNumber(number: Int) -> Int {
    if number == 1 {
        return 1
    }
    return number * factorielNumber(number: number - 1)
}

printInRecursive(num: 4)

printInReverse(linkedList)

var factorielNumberOfSeven = factorielNumber(number: 7)
print(factorielNumberOfSeven)


func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var slow = list.head
    var fast = list.head
    
    while let nextFast = fast?.next {
        fast = nextFast.next
        slow = slow?.next
    }
    
    return slow
}

public func example(of description: String, action: () -> ()) {
    print("---Example of \(description)---")
    action()
    print()
}






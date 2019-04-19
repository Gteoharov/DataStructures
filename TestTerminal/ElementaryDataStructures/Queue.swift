//
//  Queue.swift
//  TestTerminal
//
//  Created by Georgi Teoharov on 14.04.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation

protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<T>: Queue {
    
    private var array: [T] = []
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var peek: T? {
        return array.first
    }
    
    public init() { }
    
    @discardableResult
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    @discardableResult
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String {
        return String(describing: array)
    }
}


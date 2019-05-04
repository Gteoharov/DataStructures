//
//  Stack.swift
//  TestTerminal
//
//  Created by Georgi Teoharov on 14.04.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation

public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public var isEpmty: Bool {
        return peek() == nil
    }
    
    public init() { }
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public func peek() -> Element? {
        return storage.last
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let topDivider = "---top---\n"
        let bottomDivider = "\n-------"
        
        let stackElements = storage
            .map { "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

//
//  Node.swift
//  TestTerminal
//
//  Created by Georgi Teoharov on 12.04.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation

public class Node<Value> {
    
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

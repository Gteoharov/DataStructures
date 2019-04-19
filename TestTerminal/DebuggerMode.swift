//
//  DebuggerMode.swift
//  TestTerminal
//
//  Created by Georgi Teoharov on 12.04.19.
//  Copyright © 2019 Georgi Teoharov. All rights reserved.
//

import Foundation

class DebuggerMode {
    let console = ConsoleIO()
    
    func staticMode() {
        console.printUsage()
    }
}

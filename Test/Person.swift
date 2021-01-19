//
//  Person.swift
//  Test
//
//  Created by Farhad on 1/19/21.
//

import Foundation

class Person {
    var name = "farhad"
    
    // if you remove weak here, person object and secondViewController remain in memory. take a look at log content. one time you run this code without weak and another time you run it with weak.
    weak var delegate: Personable?
    
    init() {
        print("initialize Person class")
    }
    
    deinit {
        print("deinitialize Person class")
    }
    
    func foo() {
        delegate?.hello()
    }
}

protocol Personable: class {
    func hello()
}

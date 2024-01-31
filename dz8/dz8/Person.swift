//
//  Person.swift
//  dz8
//
//  Created by Артур on 11.01.2024.
//

import UIKit

struct Person {
    var name: String
    var lastname: String
}

extension Person: Comparable {
    static func < (lhs: Person, rhs: Person) -> Bool {
        lhs.name < rhs.name
    }
}

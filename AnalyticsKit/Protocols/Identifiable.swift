//
//  Identifiable.swift
//
//  Created by Taimur Ayaz on 2/14/17.
//  Copyright © 2017 Taimur Ayaz. All rights reserved.
//

import Foundation

public protocol Identifiable {
    var identifier: String { get }
}

public func ==(lhs: Identifiable, rhs: Identifiable) -> Bool {
    return lhs.identifier == rhs.identifier
}

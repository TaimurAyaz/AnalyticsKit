//
//  AnalyticsLoggable.swift
//
//  Created by Taimur Ayaz on 2/14/17.
//  Copyright © 2017 Taimur Ayaz. All rights reserved.
//

import Foundation

public protocol AnalyticsLoggable {
    func log(event: Identifiable, parameters: AnalyticsKit.Parameters)
}

public extension AnalyticsLoggable {
    public func log(event: Identifiable) {
        log(event: event, parameters: [:])
    }
}

//
//  AnalyticsProvider.swift
//
//  Created by Taimur Ayaz on 2/14/17.
//  Copyright © 2017 Taimur Ayaz. All rights reserved.
//

import Foundation

public protocol AnalyticsProvider: AnalyticsLoggable, Identifiable {
    func providerDidBegin()
    func providerDidEnd()

}

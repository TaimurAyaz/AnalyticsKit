//
//  AnalyticsKit.swift
//
//  Created by Taimur Ayaz on 2/14/17.
//  Copyright © 2017 Taimur Ayaz. All rights reserved.
//

import Foundation

public struct AnalyticsKit {
    
    public typealias Parameters = [String : Any]
        
    private static var shared = AnalyticsKit()
    private var providers = [AnalyticsProvider]()
    
    public static func add(provider: AnalyticsProvider) {
        guard shared.providers.filter({ $0.identifier == provider.identifier }).first == nil else {
            return
        }
        shared.providers.append(provider)
        provider.providerDidBegin()
    }
    
    public static func remove(provider: AnalyticsProvider) {
        let exclusiveProviders = shared.providers.filter({ $0.identifier == provider.identifier })
        shared.providers = exclusiveProviders
        provider.providerDidEnd()
    }
    
    public static func log(event: Identifiable, parameters: AnalyticsKit.Parameters = [:]) {
        shared.providers.forEach { provider in
            provider.log(event: event, parameters: parameters)
        }
    }
}


public extension Collection where Element == String {
    public var toCSV: String {
        return joined(separator: ",")
    }
}

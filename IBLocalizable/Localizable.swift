//
//  Localizable.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation

/**
 *  Localizable Protocol
 */
public protocol Localizable: class {
    
    var localizableString: String? { get set }
    
    func applyLocalizableString() -> Void
}

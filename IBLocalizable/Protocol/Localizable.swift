//
//  Localizable.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import UIKit

/**
 *  Localizable Protocol
 */
public protocol Localizable: class {
    
    /// The property that can be localized for each view, for example in a UILabel its the text, in a UIButton its the title, etc
    var localizableProperty: String? { get set }
    
    /// The localizable string value in the your localizable strings
    var localizableString: String { get set }
    
    /**
     Applies the localizable string to the supported view attribute
     */
    func applyLocalizableString(_ localizableString: String?) -> Void
    
}


extension Localizable{
    
    /**
     Applies the localizable string to the supported view attribute
     
     - parameter localizableString: localizable String Value
     */
    public func applyLocalizableString(_ localizableString: String?) -> Void {
        
        self.localizableProperty = localizableString?.localized
        
    }
}


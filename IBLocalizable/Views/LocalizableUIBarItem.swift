//
//  LocalizableUIBarItem.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - BarItem Extension that adds the localizable property
extension UIBarItem: Localizable {
    
    public var localizableProperty: String?{
        get{
            return self.title
        }
        set{
            self.title = newValue
        }
    }
    
    /// Applies the localizable string to the localizable field of the supported view
    @IBInspectable public var localizableString: String{
        get {
            return getLocalizableProperty()
        }
        set {
            applyLocalizableString(newValue)
        }
    }
    

}

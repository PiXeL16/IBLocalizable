//
//  LocalizableBarButtonItem.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - BarButton Item default implementation. Kind of redundant but I thought this was a UIView child as well, I guess not :s...
extension UIBarButtonItem : Localizable {
    
    
    /// Not implemented in base class
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
        
        get{
            guard let text = self.localizableProperty else{
                return ""
            }
            return text
        }
        set{
            applyLocalizableString(newValue)
        }
        
    }
}

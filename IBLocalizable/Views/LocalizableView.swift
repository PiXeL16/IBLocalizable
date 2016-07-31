//
//  LocalizableView.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - Base Class implementation extension
extension UIView : Localizable {
    
    /// Not implemented in base class
    public var localizableProperty: String?{
        get{
            return ""
        }
        set{}
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
            /**
             *  Applys the localization to the property
             */
            applyLocalizableString(newValue)
        }
        
    }

}

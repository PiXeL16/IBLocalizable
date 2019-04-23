//
//  LocalizableTextField.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

// MARK: - Textfield extension that adds the localizable property
extension UITextField {
    
   public override var localizableProperty: String?{
        
        get{
            return self.placeholder
        }
        set{
            self.placeholder = newValue
        }
    }

}

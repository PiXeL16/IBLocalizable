//
//  LocalizableTextField.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

extension UITextField {
    
    
    public override var localizableProperty: String?{
        
        get{
            return self.text
        }
        set{
            self.text = newValue
        }
    }

}

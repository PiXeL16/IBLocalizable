//
//  LocalizableUISearchBar.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 8/6/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
// MARK: - Button extension that adds the localizable property
extension UISearchBar {
    
   @objc public override var localizableProperty: String?{
        
        get{
            return self.placeholder
        }
        set{
            self.placeholder = newValue
        }
    }
    
    
}

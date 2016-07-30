//
//  LabelExtension.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
// MARK: - Label extension that adds the localizable property
extension UILabel {
    
    public override var localizableProperty: String?{
        
        get{
            return self.text
        }
        set{
            self.text = newValue
        }
    }
    
}

//
//  LocalizableLabel.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit

@IBDesignable public class LocalizableLabel: UILabel, Localizable {
    
    @IBInspectable public var localizableString: String?
    {
        didSet{
            applyLocalizableString()
        }
    }
    
    public func applyLocalizableString() -> Void {
        
        self.text = localizableString?.localized
        
    }
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

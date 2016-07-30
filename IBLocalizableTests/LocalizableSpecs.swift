//
//  LocalizableSpecs.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/30/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import Nimble
import Quick
import IBLocalizable

class LocalizableSpecs: QuickSpec {
    
    override func spec() {
        
        it("Applies localizable string to view"){
            
            let label:UILabel = UILabel()
            
            label.applyLocalizableString("test")
            
            expect(label.text).toNot(beEmpty())
            expect(label.text).to(equal("test"))
        }
    }
}

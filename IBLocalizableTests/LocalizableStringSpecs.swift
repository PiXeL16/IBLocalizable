//
//  LocalizableStringSpecs.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/30/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import Nimble
import Quick
import IBLocalizable

class LocalizableStringSpecs: QuickSpec {

    override func spec() {
        
        it("returns string if not found"){
            
            let localizableString = "not localized string".localized
            
            expect(localizableString).toNot(beEmpty())
            expect(localizableString).to(equal("not localized string"))
        }
        
        it("returns a existing localizable string")
        {
            
            let localizableString = "test".localize(withBundle: BundleUtil.bundle)
            expect(localizableString).toNot(beEmpty())
            expect(localizableString).to(equal("esto es una prueba"))
            
        }
        
    }

}

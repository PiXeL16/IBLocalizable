//
//  LocalizableUIBarItemsSpecs.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/30/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import Nimble
import Quick
import IBLocalizable

class LocalizableUIBarItemsSpecs: QuickSpec {
    
    override func spec() {
        
        let localizableString:String = "test"
        
        it("UIBarButtonItem localizable has values after localization"){
            
            let barButtonItem: UIBarButtonItem = UIBarButtonItem()
            
            
            barButtonItem.localizableString = localizableString
            
            expect(barButtonItem.title).to(equal(localizableString))
            expect(barButtonItem.localizableString).to(equal(localizableString))
            expect(barButtonItem.localizableProperty).to(equal(localizableString))
        }
        
        it("NavigationItem localizable has values after localization"){
            
            let navigationItem: UINavigationItem = UINavigationItem()
            
            navigationItem.localizableString = localizableString
            
            expect(navigationItem.title).to(equal(localizableString))
            expect(navigationItem.localizableString).to(equal(localizableString))
            expect(navigationItem.localizableProperty).to(equal(localizableString))
            
        }
        
    }
}

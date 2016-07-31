//
//  LocalizableViewSpecs.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/30/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import UIKit
import Nimble
import Quick
import IBLocalizable

class LocalizableViewSpecs: QuickSpec {
    
    override func spec() {
        
        let localizableString:String = "test"
        
        it("View localizable property is not implementeds"){
            
            let view:UIView = UIView()
            
            view.localizableProperty = localizableString
            
            expect(view.localizableProperty).to(beEmpty())
        }
        
        it("Label localizable property has value"){
            
            let label:UILabel = UILabel()
            
            label.localizableString = localizableString
            
            expect(label.text).to(equal(localizableString))
            expect(label.localizableString).to(equal(localizableString))
            expect(label.localizableProperty).to(equal(localizableString))
        }
        
        it("Clears localizable string after settting it")
        {
            let label: UILabel = UILabel()
            label.localizableString = localizableString
            
            expect(label.text).to(equal(localizableString))
            expect(label.localizableProperty).to(equal(localizableString))
            
            //Clears the localizable string
            
            label.localizableString = ""
            expect(label.text).to(beEmpty())
        }
        
        it("Button localizable property has information after setting localizable string"){
            
            
            let button: UIButton = UIButton()
            button.localizableString = localizableString
            expect(button.currentTitle).to(equal(localizableString))
            expect(button.localizableProperty).to(equal(localizableString))
        }
        
        it("TextField localizable property has information after setting localizable string"){
            
            
            let textField: UITextField = UITextField()
            textField.localizableString = localizableString
            expect(textField.placeholder).to(equal(localizableString))
            expect(textField.localizableProperty).to(equal(localizableString))
        }
        
        it("TextView localizable property is set after setting its localizable string"){
            
            let textView: UITextView = UITextView()
            textView.localizableString = localizableString
            expect(textView.text).to(equal(localizableString))
            expect(textView.localizableProperty).to(equal(localizableString))
        }
    }
}


//
//  LocalizableBundle.swift
//  IBLocalizable
//
//  Created by Layman on 2019/7/23.
//  Copyright © 2019 Chris Jimenez. All rights reserved.
//

import Foundation

fileprivate let LANG_KEY = "iblocalizable:custom:language"

extension Bundle {
    
    struct Holder {
        static var _custom: Bundle?
    }
    
    open class var customBundle: Bundle {
        get {
            if let custom = Holder._custom {
                return custom
            }
            guard let custom = Bundle.languageBundle() else {
                Holder._custom = Bundle.main
                return Bundle.main
            }
            Holder._custom = custom
            return custom
        }
    }
    
    public class func languageBundle() -> Bundle? {
        guard let customLanguage = UserDefaults.standard.string(forKey: LANG_KEY) else {
            return nil
        }
        let languageBundlePath = Bundle.main.path(forResource: customLanguage, ofType: "lproj")
//        print("path = \(String(describing: languageBundlePath))")
        guard let customePath = languageBundlePath else {
            return nil
        }
        return Bundle(path: customePath)
    }
    
    public class func setCustomLanguage(_ language: String?) {
        if let lang = language {
            UserDefaults.standard.set(lang, forKey: LANG_KEY)
        } else {
            UserDefaults.standard.removeObject(forKey: LANG_KEY)
        }
        Holder._custom = nil
    }
}

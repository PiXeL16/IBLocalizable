//
//  StringUtils.swift
//  IBLocalizable
//
//  Created by Chris Jimenez on 7/29/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation

// MARK: - String extensions
extension String {

    /// Returns the localized string value
    public var localized: String {
        return localize(withBundle: Bundle.customBundle)
    }
    
    public func localized(_ param: Any, withBundle bundle: Bundle = Bundle.customBundle) -> String{
        return String(format: NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: ""), "\(param)")
    }
    
    public func localize(withBundle bundle: Bundle) -> String
    {
        return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
    }

}

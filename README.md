![IBLocalizable](/Web/banner.png)

Localize your views easily from Interface Builder with IBLocalizable.

[![Build Status](https://travis-ci.org/PiXeL16/IBLocalizable.svg?branch=master)](https://travis-ci.org/PiXeL16/IBLocalizable)
[![codecov.io](https://codecov.io/github/PiXeL16/IBLocalizable/coverage.svg?branch=master)](https://codecov.io/github/PiXeL16/IBLocalizable?branch=master)
[![Language](https://img.shields.io/badge/language-Swift%202.2-orange.svg)](https://swift.org)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/IBLocalizable.svg)](https://img.shields.io/cocoapods/v/IBLocalizable.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PiXeL16/IBLocalizable/master/LICENSE)

With `IBlocalizable`, you can localize your views in `Interface Builder` easily.
Simply set the new `Localizable String` property that shows up in Interface builder to the value that you added in your Localizable `.string file`. Most views can be localized this way `without a single line of code`!.

## Installation
### [Swift package manager](https://swift.org/package-manager)

Add `.Package(url: "https://github.com/PiXeL16/IBLocalizable.git", majorVersion: 1)` to your `Package.swift`

### [CocoaPods](https://cocoapods.org)

Add `pod 'IBLocalizable'` to your Podfile.

### [Carthage](https://github.com/Carthage/Carthage)

Add `github "PiXeL16/IBLocalzable"` to your Cartfile.

## Supported Views

* UILabel
* UIButton
* UINavigationItem (Navigation titles)
* UIBarItem (BarButton, TabBarItem, etc)
* UITextField
* UITextView

### Supporting custom views
Custom views can be supported easily. Just create an `extension` and implement the `Localizable` Protocol.

If your custom view extends from `UIView` you only need to extend your custom view and implement the `localizableProperty`.

For example: let´s say that I have a custom view that contains several `UILabel` and a `UIImageView`. I will like to localize one of the `UILabel`.

```swift
import UIKit
extension MyCustomView {

    public override var localizableProperty: String?{

        get{
            return self.label.text
        }
        set{
            self.label.text = newValue
        }
    }
}
```
Thats it! :smile:.

## Usage
After the package its installed simply open your `Storyboard` or `Interface Builder`. All of the supported views will show a `new` `Localizable String` property.

![interfaceBuilder](/Web/interfaceBuilder.png)

Since everything is extension based, `IBLocalizable` should play nice with other libraries or `pods` that you are using

## Sample Project
In the `Xcode Project` you can find a sample project of a simple `Login` view controller. All of this is automatically localizable in English and Spanish by just using `IBLocalizable`.
### English
![english](/Web/english.png)

### Spanish
![spanish](/Web/spanish.png)


## TODO
* Support more views (SearchBar, TableView Cells, etc)
* Improve sample project.

## Author
Chris Jimenez - http://code.chrisjimenez.net, [@chrisjimeneznat](http://twitter.com/chrisjimeneznat)

## License
`PasswordTextField` is released under the MIT license. See [LICENSE](https://github.com/pixel16/PasswordTextField/blob/master/LICENSE) for details.

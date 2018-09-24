![IBLocalizable](/Web/banner.png)

Localize your views easily in Interface Builder with IBLocalizable.

[![codecov.io](https://codecov.io/github/PiXeL16/IBLocalizable/coverage.svg?branch=master)](https://codecov.io/github/PiXeL16/IBLocalizable?branch=master)
[![Language](https://img.shields.io/badge/language-Swift%204.2-orange.svg)](https://swift.org)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/IBLocalizable.svg)](https://img.shields.io/cocoapods/v/IBLocalizable.svg)
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/matteocrippa/awesome-swift)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PiXeL16/IBLocalizable/master/LICENSE)

With `IBLocalizable`, you can localize your views in `Interface Builder` easily.
Simply set the new `Localizable String` property that shows up in Interface builder to the value that you added in your Localizable `.string file`. Most views can be localized this way `without a single line of code`.

## Installation
### [Swift package manager](https://swift.org/package-manager)

Add `.Package(url: "https://github.com/PiXeL16/IBLocalizable.git",majorVersion: 1)` to your `Package.swift`

### [CocoaPods](https://cocoapods.org)

Add `pod 'IBLocalizable'` to your Podfile.

### [Carthage](https://github.com/Carthage/Carthage)

Add `github "PiXeL16/IBLocalizable"` to your Cartfile.

### Manual Installation
* Please note, installation via CocoaPods or Carthage is much simpler and recommended.

Download and drop `/IBLocalizable` in your project.

## Supported Views

* UILabel
* UIButton
* UINavigationItem (Navigation titles)
* UIBarItem (BarButton, TabBarItem, etc)
* UITextField
* UITextView
* UISearchBar

### Supporting custom views
Custom views can be supported easily. Just create an `extension` and implement the `Localizable` Protocol.

If your custom view extends from `UIView` you only need to extend your custom view and implement the `localizableProperty`.

For example: lets say that I have a custom view that contains several `UILabel` and a `UIImageView`. I will like to localize one of the `UILabel`.

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

Since everything is extension based, `IBLocalizable` should play nice with other libraries or `pods` that you are using.

### Build Performance

Since `IBLocalizable` only uses `IBInspectable` and never `IBDesignable`, your incremental builds will continue to work. (http://www.openradar.me/20690594)

## Sample Project
In the `Xcode Project` you can find a sample project of a simple `Login` view controller. All of this is automatically localizable in English and Spanish by just using `IBLocalizable`.
### English
![english](/Web/english.png)

### Spanish
![spanish](/Web/spanish.png)

## To do
* Support more views (TableView Cells, etc)
* Improve sample project.

## Author
Chris Jimenez - http://code.chrisjimenez.net, [@chrisjimeneznat](http://twitter.com/chrisjimeneznat)

## :beer: Donate
If you want to buy me a beer, you can donate to my coin addresses below:
#### BTC
1BeGBew4CBdLgUSmvoyiU1LrM99GpkXgkj
#### ETH
0xa59a3793E3Cb5f3B1AdE6887783D225EDf67192d
#### LTC
Ld6FB3Tqjf6B8iz9Gn9sMr7BnowAjSUXaV

## License
`IBLocalizable` is released under the MIT license. See [LICENSE](https://github.com/pixel16/IBLocalizable/blob/master/LICENSE) for details.

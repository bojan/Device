# Thingy
Device detection and querying library.

[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/bojan/Thingy/master/LICENSE)
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/Thingy.svg)](https://cocoapods.org/pods/Thingy)
[![Build Status](https://travis-ci.org/bojan/Thingy.svg?branch=develop)](https://travis-ci.org/bojan/Thingy)

## Features

- [x] Device detection
- [x] Device family detection
- [ ] Device screens
- [x] Simulator detection
- [x] Simple querying

## Requirements

## Installation

### Swift Packager Manager (SPM)

Create a `Package.swift` file, and add this snippet:

``` swift
import PackageDescription

let package = Package(
    name: "HelloWorld",
    dependencies: [
        .Package(url: "https://github.com/bojan/Thingy.git", "1.0.0-alpha.1")
    ]
)
```

### Carthage

Add this to your `Cartfile`:

```
github "bojan/Thingy"
```

### CocoaPods

Add this to your `Podfile`

```
pod 'Thingy'
```

### Manually

Add the repository as a submodule to your project.

```
git submodule add https://github.com/bojan/Thingy.git Vendor/Thingy
```

Open the newly created folder in Finder and drag `Thingy.xcodeproj` to your project.

In your project's settings, select your target and under **General** > **Embedded Binaries**, add the framework depdending on the target OS (iOS, watchOS or tvOS).

## Usage

Import the module where needed:

```
import Thingy
```

### Device properties

Inspect the current device:

```swift

let myDevice = Thingy()

// Compare models or product families
if myDevice.family == .tv {
    print("This is an Apple TV device.")
}

if myDevice.model != .iPhone7Plus {
    print("This is NOT an iPhone 7 Plus.")
}

// Pretty printed device properties

print(myDevice.family.marketingName) // e.g. iPad
print(myDevice.model.marketingName) // e.g. iPhone 7 Plus
print(myDevice.productLine.marketingName) // e.g. Air

```

### Model comparison

```swift
let myDevice = Thingy()

do {
	let result = try myDevice.isEqual(to: Thingy.iPadPro12Inch)
}
catch {
	print("The devices are incompatible.")
}

do {
	let result = try myDevice.isOlder(than: Thingy.iPadPro10Inch)
}
catch {
	print("The devices are incompatible.")
}
```

## Contributions

All contributions and suggestions are welcome and very much appreciated.

Should you have a feature request or a problem that you may experience, feel free to [open an issue](https://github.com/bojan/Thingy/issues/new).

If you are willing to contribute by adding a feature or squashing a bug or two, please submit a pull request.

## Author

Bojan Dimovski
- [@bojand](https://twitter.com/bojand)
- [LinkedIn](http://linkedin.com/in/bdimovski)

## License

Thingy is available under the MIT license. Check the [LICENSE](https://raw.githubusercontent.com/bojan/Thingy/master/LICENSE) file for more info.

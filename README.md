# Thingy
A modern device detection and querying library.

[![Build Status](https://app.bitrise.io/app/5638e96850380bcf/status.svg?token=ATvHHXw6RMbyde-i0FPV_w&branch=master)](https://app.bitrise.io/app/5638e96850380bcf)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/bojan/Thingy/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/Thingy.svg)](https://cocoapods.org/pods/Thingy)
[![Documentation](https://raw.githubusercontent.com/bojan/Thingy/master/docs/badge.svg?sanitize=true)](https://bojan.github.io/Thingy)
[![codecov](https://codecov.io/gh/bojan/Thingy/branch/master/graph/badge.svg)](https://codecov.io/gh/bojan/Thingy)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fbojan%2FThingy.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fbojan%2FThingy?ref=badge_shield)

## Features

- [x] Swift 5 support
- [x] Modern syntax
- [x] Documentation
- [x] Device detection
- [x] Device family detection
- [x] Device screens
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
        .Package(url: "https://github.com/bojan/Thingy.git", "2.1.0")
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

In your project's settings, select your target and under **General** > **Embedded Binaries**, add the framework depending on the target OS (iOS, watchOS or tvOS).

## Usage

Import the module where needed:

```
import Thingy
```

### Device properties

Inspect the current device:

```swift

let myDevice = Device()

// Compare models or product families
if myDevice.family == .tv {
    print("This is an Apple TV device.")
}

if myDevice.model != .iPhoneXSMax {
    print("This is NOT an iPhone XS Max.")
}

// Pretty printed device properties

print(myDevice.family.marketingName) // e.g. iPad
print(myDevice.model.marketingName) // e.g. iPhone 7 Plus
print(myDevice.productLine.marketingName) // e.g. Air

```

### Model comparison

```swift
let myDevice = Device()

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

### Device size

```swift
let myDevice = Device()

if myDevice.display == .screen10_5Inch {
    print("This is the 10.5in iPad Pro.")
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


[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fbojan%2FThingy.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fbojan%2FThingy?ref=badge_large)
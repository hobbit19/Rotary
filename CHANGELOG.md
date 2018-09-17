# Change Log

## [2.0.0](https://github.com/rob-nash/Rotary/releases/tag/2.0.0) (2018-Sep-17)

 - Swift 4.2

## [1.2.0](https://github.com/rob-nash/Rotary/releases/tag/1.2.0) (2018-Mar-17)

 - Added default implementation for `wheelOptionTitle`

```swift
public extension WheelOption where Self: CustomStringConvertible {
  
  var wheelOptionTitle: String {
    return description
  }
}
```

## [1.1.1](https://github.com/rob-nash/Rotary/releases/tag/1.1.1) (2017-Dec-21)

 - Now works with tvOS targets.

## [1.1.0](https://github.com/rob-nash/Rotary/releases/tag/1.1.0) (2017-Dec-18)

 - This is potentially a breaking change. Your wheel options are now required to be equatable. When rotation ends and a wheel option is passed back to you, it would be more convenient if that option was equatable.

## [1.0.0](https://github.com/rob-nash/Rotary/releases/tag/1.0.0) (2017-Dec-18)

- First release

<p align="center">
    <img src="Logo.png" width="480" max-width="90%" alt="Rotary" />
</p>

<p align="center">
    <a href="https://travis-ci.org/rob-nash/rotary">
        <img src="https://travis-ci.org/rob-nash/rotary.svg?branch=master" alt="Build" />
    </a>
    <a href="https://twitter.com/nashytitz">
        <img src="https://img.shields.io/badge/contact-@nashytitz-blue.svg?style=flat" alt="Twitter: @nashytitz" />
    </a>
</p>

A customisable rotary wheel UI component.

<p align="left"><img src="http://i.giphy.com/xUOxffXe2Trd7oZR72.gif" width="248" height="391"/></p>

## Usage

```swift
import Rotary

struct Dancer: Equatable, WheelOption {
    let name: String
    var wheelOptionTitle: String {
        return name
    }
    static func ==(lhs: Dancer, rhs: Dancer) -> Bool {
        return lhs.name == rhs.name
    }
}

let wheelControl = RotaryWheelControl<Dancer>()
wheelControl.rotationEnded = { [unowned self] dancer in
    self.label.text = "The current selection is \(dancer.name)"
}
wheelControl.layout([
    Dancer(name: "Joanne"),
    Dancer(name: "Stacey"),
    Dancer(name: "Rhian"),
    Dancer(name: "Cathy"),
    Dancer(name: "Robin")
    ])
wheelControl.styling = RotaryWheelStyling(font: FontManager.subtitle, textColour: ColourManager.text, spindleColour: ColourManager.spindle, backgroundColour: ColourManager.wheel, innerGrooveColour: ColourManager.groove, outerGrooveColour: ColourManager.groove)
view.addSubview(wheelControl)
```

The closure 'rotationEnded' is called immediately after layout. If you do not want this behaviour, call layout before you assign the closure.

Set up your constraints on the wheel such that the wheel is restricted with an aspect ratio of 1:1 and has a fixed width or height. Try playing around with a width of 400 points and a font size of UIFont.systemFontOfSize(20) to get you started. Checkout [DancerWheel](https://github.com/rob-nash/DancerWheel) for an example implementation.


## Installing

For the latest release, select the [release](https://github.com/rob-nash/rotary/releases) tab.

### Carthage:

Add `github "rob-nash/rotary"` to your `Cartfile`.

### Donations.
<p>If you like this and you want to buy me a drink, use bitcoin.</p>

![Bitcoin Image](Resources/Bitcoin.jpg)

Bitcoin Address: 15Gj4DBTzSujnJrfRZ6ivrR9kDnWXNPvNQ

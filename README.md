<p align="center">
    <img src="Logo.png" width="480" max-width="90%" alt="Rotary" />
</p>

<p align="center">
    <a href="https://travis-ci.org/rob-nash/Rotary">
        <img src="https://travis-ci.org/rob-nash/Rotary.svg?branch=master" alt="Build" />
    </a>
    <a href="https://img.shields.io/badge/carthage-compatible-brightgreen.svg">
        <img src="https://img.shields.io/badge/carthage-compatible-brightgreen.svg" alt="Carthage"/>
    </a>
<a href="https://app.fossa.io/projects/git%2Bgithub.com%2Frob-nash%2FRotary?ref=badge_shield" alt="FOSSA Status"><img src="https://app.fossa.io/api/projects/git%2Bgithub.com%2Frob-nash%2FRotary.svg?type=shield"/></a>
    <a href="https://codebeat.co/projects/github-com-rob-nash-rotary-master">
        <img alt="codebeat badge" src="https://codebeat.co/badges/be7e7c92-5524-4b5d-83f3-9bf7879fe363" />
    </a>
    <a href="https://twitter.com/nashytitz">
        <img src="https://img.shields.io/badge/contact-@nashytitz-blue.svg?style=flat" alt="Twitter: @nashytitz" />
    </a>
</p>

A customisable rotary wheel UI component.

![Image1](https://user-images.githubusercontent.com/14126999/42086646-a5905a42-7b8b-11e8-81bf-31e70a0d70e6.png)

![Image2](https://user-images.githubusercontent.com/14126999/42087441-19c7335c-7b8e-11e8-9470-e18641173273.png)

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

## AutoLayout Constraints

Set up your constraints on the wheel such that the wheel is restricted with an aspect ratio of 1:1 and has a fixed width or height. Try playing around with a width of 400 points and a font size of UIFont.systemFontOfSize(20) to get you started.

<p align="left"><img src="http://i.giphy.com/3o752cCLAdeybritOM.gif" width="248" height="391"/></p>

<p align="left"><img src="http://i.giphy.com/3oFzm9Tyl10swaglHy.gif" width="733" height="420"/></p>

## Demo

Run the `DancerWheel-iOS` scheme or `DancerWheel-tvOS` scheme.

## Installing

1. Run the [Carthage](https://github.com/Carthage/Carthage) command `carthage update`.
2. Embed Binary

[See Guide](https://github.com/rob-nash/Rotary/wiki/Installation)


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Frob-nash%2FRotary.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Frob-nash%2FRotary?ref=badge_large)
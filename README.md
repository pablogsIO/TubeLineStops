# TubeLineStops - Swift

![](https://img.shields.io/badge/language-swift-blue.svg)
![](https://img.shields.io/badge/version-1.0.0-red.svg)
[![License](https://img.shields.io/cocoapods/l/RecordButton.svg?style=flat)](https://github.com/pablogsIO/TubeLineStops)
[![Platform](https://img.shields.io/cocoapods/p/RecordButton.svg?style=flat)](https://github.com/pablogsIO/TubeLineStops)


<p align="center">
<img src="Images/tubeLineStops.gif"/>
</p>

A simple UIView subclass that allows you to draw tube line stops.

This class draws parts of the line, these parts could be the beginning of the line, the end, forks, unions etc. You can see here different types:

<p align="center">
<img src="Images/tailLeft.png"/>
</p>
<p align="center">
<img src="Images/forkedStopEndDown.png"/>
</p>
<p align="center">
<img src="Images/forkedStopUp.png"/>
</p>
<p align="center">
<img src="Images/forkLeftStopDown.png"/>
</p>
<p align="center">
<img src="Images/middle.png"/>
</p>
<p align="center">
<img src="Images/tailForkedLefStoptDown.png"/>
</p>
<p align="center">
<img src="Images/tailRight.png"/>
</p>
<p align="center">
<img src="Images/unionRightStopUp.png"/>
</p>


## Demo

You have a fully functional demo in TubeLineStops folder.



## Example Usage

```swift

var stop: TubeLineStop()

stop.lineColor = UIColor.red
stop.stopType = .tailLeft

```

## License

TubeLineStops is available under the MIT license. See the LICENSE file for more info.

If you use it, i'll be happy to know about it.

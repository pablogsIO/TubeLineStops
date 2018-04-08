# TubeLineStops - Swift

![](https://img.shields.io/badge/language-swift-blue.svg)


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

## Example Usage

```swift

var stop: TubeLineStop()

stop.lineColor = UIColor.red
stop.stopType = .tailLeft

```





//
//  LineDataSource.swift
//  TubeLineStops
//
//  Created by Pablo on 02/04/2018.
//  Copyright © 2018 Pablo. All rights reserved.
//

import UIKit

class LineDataSource: NSObject, UICollectionViewDataSource {
    
    struct LineStop {
        let name: String
        let type: TubeLineStop.StopType
        
    }
    
    var lineStops: [LineStop] {
        var stops = [LineStop]()
        let stop01 = LineStop(name: "High Barnet", type: TubeLineStop.StopType.tailLeft)
        let stop02 = LineStop(name: "Mill Hill East", type: TubeLineStop.StopType.tailForkedLefStoptDown)
        let stop03 = LineStop(name: "Woodside Park", type: TubeLineStop.StopType.unionRightStopUp)
        let stop04 = LineStop(name: "Highgate", type: TubeLineStop.StopType.middle)
        let stop05 = LineStop(name: "Liecester Square", type: TubeLineStop.StopType.forkLeftStopDown)
        let stop06 = LineStop(name: "Old Street", type: TubeLineStop.StopType.forkedStopUp)
        let stop07 = LineStop(name: "Ealing Broadway", type: TubeLineStop.StopType.forkedStopEndDown)
        let stop08 = LineStop(name: "Greenford", type: TubeLineStop.StopType.middle)
        let stop09 = LineStop(name: "Winbledon", type: TubeLineStop.StopType.middle)
        let stop10 = LineStop(name: "Paddington", type: TubeLineStop.StopType.tailRight)
        
        stops.append(stop01)
        stops.append(stop02)
        stops.append(stop03)
        stops.append(stop04)
        stops.append(stop05)
        stops.append(stop06)
        stops.append(stop07)
        stops.append(stop08)
        stops.append(stop09)
        stops.append(stop10)
        
        return stops
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return lineStops.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "TubeLineStopCell"
        
        
        collectionView.register(UINib(nibName: "TubeLineCell", bundle: nil), forCellWithReuseIdentifier: "TubeLineStopCell")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TubeLineStopCVC
        
        cell.tubeLineStop.stopType = lineStops[indexPath.item].type
        cell.tubeLineStopName.text = lineStops[indexPath.item].name
        
        return cell
    }
}

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
        let stop01 = LineStop(name: "01", type: TubeLineStop.StopType.tailLeft)
        let stop02 = LineStop(name: "02", type: TubeLineStop.StopType.middle)
        let stop03 = LineStop(name: "03", type: TubeLineStop.StopType.forkLeftStopUp)
        let stop04 = LineStop(name: "04", type: TubeLineStop.StopType.forkedStopDown)
        let stop05 = LineStop(name: "05", type: TubeLineStop.StopType.forkedStopUp)
        let stop06 = LineStop(name: "06", type: TubeLineStop.StopType.forkedStopDown)
        let stop07 = LineStop(name: "07", type: TubeLineStop.StopType.unionRightStopUp)
        let stop08 = LineStop(name: "08", type: TubeLineStop.StopType.middle)
        let stop09 = LineStop(name: "09", type: TubeLineStop.StopType.tailRight)
        
        stops.append(stop01)
        stops.append(stop02)
        stops.append(stop03)
        stops.append(stop04)
        stops.append(stop05)
        stops.append(stop06)
        stops.append(stop07)
        stops.append(stop08)
        stops.append(stop09)
        
        return stops
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return lineStops.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "TubeLineStopCell"
        
        
        collectionView.register(UINib(nibName: "TubeLineCell", bundle: nil), forCellWithReuseIdentifier: "TubeLineStopCell")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TubeLineStopCVC
        
        cell.tubeLineStop.positionInTheLine = lineStops[indexPath.item].type

        return cell
    }
}

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
        
        stops.append(stop01)
        stops.append(stop02)
        stops.append(stop03)
        //stops.append(stop04)
        
        return stops
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("total lines: \(lineStops.count)")
        return lineStops.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "TubeLineStopCell"
        
        
        collectionView.register(UINib(nibName: "TubeLineCell", bundle: nil), forCellWithReuseIdentifier: "TubeLineStopCell")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TubeLineStopCVC
        
        cell.tubeLineStop.positionInTheLine = self.lineStops[indexPath.row].type
        
        return cell
    }
}

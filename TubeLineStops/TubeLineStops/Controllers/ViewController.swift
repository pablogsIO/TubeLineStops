//
//  ViewController.swift
//  TubeLineStops
//
//  Created by Pablo on 30/03/2018.
//  Copyright © 2018 Pablo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tubeStop: TubeLineStop!
    
    @IBOutlet weak var tubeLine: UICollectionView!
    
    var datasource = LineDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tubeStop.lineColor = UIColor.red
        
        tubeLine.dataSource = datasource
        tubeLine.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}



extension ViewController: UICollectionViewDelegateFlowLayout{
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
      
        print("Willdisplay")
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.width, height: 100)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0,0, 0, 0)
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
}

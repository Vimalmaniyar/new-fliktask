//
//  HomeVC.swift
//  AKSwiftSlideMenu
//
//  Created by MAC-186 on 4/8/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit
import CoreLocation
class HomeVC: BaseViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var locationManager = CLLocationManager()
    
    
    let job = ["Care Taker","Beutician","Carpenter","Civil Work","Driver","Electrician","Gardening","Tailor","Home Tutor","House Keeping","Workers","Laundry Service","Painter","Plumber","Pandit","Tiffin","Transport","Vehicle Repair","Water Supplier","Welder","Personal Trainer","Photographer"]
    let job_image = [#imageLiteral(resourceName: "caretaker"),#imageLiteral(resourceName: "beutician"),#imageLiteral(resourceName: "carpenter"),#imageLiteral(resourceName: "civil work"),#imageLiteral(resourceName: "driver"),#imageLiteral(resourceName: "electrician"),#imageLiteral(resourceName: "gardnening"),#imageLiteral(resourceName: "tailor"),#imageLiteral(resourceName: "home tutor"),#imageLiteral(resourceName: "housekeeper"),#imageLiteral(resourceName: "workers"),#imageLiteral(resourceName: "laundry"),#imageLiteral(resourceName: "painter"),#imageLiteral(resourceName: "plumber"),#imageLiteral(resourceName: "pandit"),#imageLiteral(resourceName: "tiffin"),#imageLiteral(resourceName: "transport"),#imageLiteral(resourceName: "Vehicle Repair"),#imageLiteral(resourceName: "water supplyer"),#imageLiteral(resourceName: "welder"),#imageLiteral(resourceName: "personal trainer"),#imageLiteral(resourceName: "photographer")]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return job.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! CollectionViewCell
        cell.job_lbl.text = job[indexPath.item]
        cell.job_img.image = job_image[indexPath.item]
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
   /* func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.black.cgColor
        cell?.layer.borderWidth = 3
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 1
    }*/
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
       let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 05, right: 10)
        layout.itemSize = CGSize(width: self.collectionView.frame.size.width/4, height:
            self.collectionView.frame.size.height/5)
       layout.minimumInteritemSpacing = 10
      layout.minimumLineSpacing = 10
       collectionView!.collectionViewLayout = layout
       
        // Do any additional setup after loading the view.
    //  locationManager.requestWhenInUseAuthorization()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func location(_ sender: Any) {
        locationManager.requestWhenInUseAuthorization()
        var currentLoc : CLLocation!
        if(CLLocationManager.authorizationStatus() == .authorizedAlways || CLLocationManager.authorizationStatus() == .authorizedWhenInUse)
        {
            currentLoc = locationManager.location
           // print(currentLoc.coordinate.latitude)
           // print(currentLoc.coordinate.longitude)
            print("done")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

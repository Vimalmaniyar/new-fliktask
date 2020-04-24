//
//  BecomePSViewController.swift
//  Flik Task
//
//  Created by Sandeep on 4/20/20.
//  Copyright © 2020 vimal. All rights reserved.
//

import UIKit
import Foundation
class BecomePSViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    var job: [String: Bool] = ["CareTaker": false,"Beutician": false,"Carpenter": false,"Civil Work": false,"Driver": false,"Electrician": false,"Gardening": false,"Tailor": false,"Home Tutor": false,"House Keeping": false,"Workers": false,"Laundry Service": false,"Painter": false,"Plumber": false,"Pandit": false,"Tiffin": false,"Transport": false,"Vehicle Repair": false,"Water Supplier": false,"Welder": false,"Personal Trainer": false,"Photographer": false]
   // var job = ["Care Taker","Beutician","Carpenter","Civil Work","Driver","Electrician","Gardening","Tailor","Home Tutor","House Keeping","Workers","Laundry Service","Painter","Plumber","Pandit","Tiffin","Transport","Vehicle Repair","Water Supplier","Welder","Personal Trainer","Photographer"]
    
    let job_image = [#imageLiteral(resourceName: "caretaker"),#imageLiteral(resourceName: "beutician"),#imageLiteral(resourceName: "carpenter"),#imageLiteral(resourceName: "civil work"),#imageLiteral(resourceName: "driver"),#imageLiteral(resourceName: "electrician"),#imageLiteral(resourceName: "gardnening"),#imageLiteral(resourceName: "tailor"),#imageLiteral(resourceName: "home tutor"),#imageLiteral(resourceName: "housekeeper"),#imageLiteral(resourceName: "workers"),#imageLiteral(resourceName: "laundry"),#imageLiteral(resourceName: "painter"),#imageLiteral(resourceName: "plumber"),#imageLiteral(resourceName: "pandit"),#imageLiteral(resourceName: "tiffin"),#imageLiteral(resourceName: "transport"),#imageLiteral(resourceName: "Vehicle Repair"),#imageLiteral(resourceName: "water supplyer"),#imageLiteral(resourceName: "welder"),#imageLiteral(resourceName: "personal trainer"),#imageLiteral(resourceName: "photographer")]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let tick = false
   
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return job.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell:UITableViewCell=UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:"cell")
     //  job.updateValue(true, forKey: String(describing: cell))
      
        cell.textLabel?.text = jobArray[indexPath.row]
        cell.imageView?.image = job_image[indexPath.row]
        tableView.setEditing(true, animated: true)
       
         return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:UITableViewCell=UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:"cell")
        valueArray[indexPath.row] = true
     //  var key=job.updateValue(true, forKey: String(describing: cell))
       
     //   print(valueArray[indexPath.row])
        let jobDict = Dictionary(uniqueKeysWithValues: zip(jobArray, valueArray))
      print(jobDict)
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        valueArray[indexPath.row] = false
        let jobDict = Dictionary(uniqueKeysWithValues: zip(jobArray, valueArray))
        print(jobDict)
        
    }
   
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.init(rawValue: 1)!
    }
    var jobArray: [String] = []
    var valueArray: [Bool] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    for (key, value) in job {
            //print("key is - \(key) and value is - \(value)")
           jobArray.append(key)
           valueArray.append(value)
        }
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func next(_ sender: Any) {
        print(job)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

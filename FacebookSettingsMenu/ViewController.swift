//
//  ViewController.swift
//  FacebookSettingsMenu
//
//  Created by Jason Howard Kendall on 5/21/19.
//  Copyright © 2019 JHK. All rights reserved.
//
import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    let arrayStuff = ["About me", "Settings", "Pictures", "Saved Vieos","Log Out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 80
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCellID", for: indexPath) as! tableCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCellTwoID", for: indexPath) as! tableCellTwo
            // This was not cool
            cell.labelCatagory.text = arrayStuff[indexPath.row - 1]
            return cell
        }
    }
}



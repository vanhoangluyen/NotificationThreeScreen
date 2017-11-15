//
//  FirstVC.swift
//  NotificationThreeScreen
//
//  Created by admin on 4/29/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var nameLabelVC1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(addName), name: NotificationKey.key2, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func addName (notification: Notification) {
        nameLabelVC1.text = "Actions"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func clearButton(_ sender: UIButton) {
        nameLabelVC1.text = ""
    }

}

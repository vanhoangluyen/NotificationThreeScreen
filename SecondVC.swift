//
//  SecondVC.swift
//  NotificationThreeScreen
//
//  Created by HoangLuyen on 11/15/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var nameLabelVC2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(AddLabel), name: NotificationKey.name, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func AddLabel(notification: Notification) {
        let string = notification.object as! String
        nameLabelVC2.text = string
    }
    
    @IBAction func okButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}

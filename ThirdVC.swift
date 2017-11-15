//
//  ThirdVC.swift
//  NotificationThreeScreen
//
//  Created by admin on 4/29/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name: NotificationKey.name, object: nameTextField.text)
        
        NotificationCenter.default.post(name: NotificationKey.key2, object: nil)
        
        navigationController?.popViewController(animated: true)
    }

}

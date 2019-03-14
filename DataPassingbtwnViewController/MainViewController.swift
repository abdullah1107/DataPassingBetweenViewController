//
//  ViewController.swift
//  DataPassingbtwnViewController
//
//  Created by Muhammad Abdullah Al Mamun on 14/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, dataReceived {
    
    @IBOutlet weak var first_label: UILabel!
    
    @IBOutlet weak var first_textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func press_buttonFirst(_ sender: UIButton) {
     
        performSegue(withIdentifier: "sendDataback", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sendDataback"
        {
            let vc = segue.destination as! SecondViewController
            vc.seconddata = first_textField.text!
            vc.delegate = self
        }
    }
    @IBAction func backgroundBtnPressed(_ sender: UIButton) {
        //
        self.view.backgroundColor = UIColor.green
    }
    
    func dataReceivedFromSecondVC(data: String) {
        //
        first_label.text = data
    }
    

}


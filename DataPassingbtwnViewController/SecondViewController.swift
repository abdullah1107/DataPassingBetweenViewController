//
//  SecondViewController.swift
//  DataPassingbtwnViewController
//
//  Created by Muhammad Abdullah Al Mamun on 14/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

protocol dataReceived {
    func dataReceivedFromSecondVC(data:String)
}

class SecondViewController: UIViewController {
    
    var delegate : dataReceived?
    var seconddata:String = ""
    
    @IBOutlet weak var secondLabel: UILabel!
    
    
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         secondLabel.text = seconddata
        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        //
        delegate?.dataReceivedFromSecondVC(data: secondTextField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
    

}

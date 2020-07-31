//
//  ViewController.swift
//  5.SubmitValue
//
//  Created by 곽우현 on 2020/07/31.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    sender: Any 타입으로 받을경우 Downcasting을 해야한다.
    @IBAction func onSwitch(_ sender: UISwitch) {
        if sender.isOn == true{
            self.isUpdateText.text = "갱신함"
        }else{
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
//    sender: Any 타입으로 받을경우 Downcasting을 해야한다.
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(identifier: "RVC") as? ResultViewController else {
            return
        }
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.present(rvc, animated: true, completion: nil)
    }
}


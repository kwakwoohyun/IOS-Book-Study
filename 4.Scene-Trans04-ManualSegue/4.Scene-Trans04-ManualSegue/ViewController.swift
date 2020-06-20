//
//  ViewController.swift
//  4.Scene-Trans04-ManualSegue
//
//  Created by 곽우현 on 2020/06/20.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        
//        세그웨이를 실행
        self.performSegue(withIdentifier: "ManualWind", sender: self)
        
    }
    
}


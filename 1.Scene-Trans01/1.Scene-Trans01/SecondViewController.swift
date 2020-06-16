//
//  SecondViewController.swift
//  1.Scene-Trans01
//
//  Created by 곽우현 on 2020/06/16.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}

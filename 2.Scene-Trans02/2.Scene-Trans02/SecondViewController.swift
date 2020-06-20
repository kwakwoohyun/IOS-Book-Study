//
//  SecondViewController.swift
//  2.Scene-Trans02
//
//  Created by 곽우현 on 2020/06/20.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func naviBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

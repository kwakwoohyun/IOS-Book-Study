//
//  ResultViewController.swift
//  5.SubmitValue
//
//  Created by 곽우현 on 2020/07/31.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (paramUpdate == true ? "자동갱신" : "자동갱신안함")
        self.resultInterval.text = "\(paramInterval)분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}

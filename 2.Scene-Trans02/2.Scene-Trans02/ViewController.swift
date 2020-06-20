//
//  ViewController.swift
//  2.Scene-Trans02
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


    @IBAction func moveByNavi(_ sender: Any) {
//        두번째 뷰 컨트롤러 인스턴스를 가져온다.
        if let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") {
//            NavigationController로 화면을 전환한다.
            self.navigationController?.pushViewController(uvc, animated: true)
        }
    }
    
    @IBAction func movePresent(_ sender: Any) {
//        두번째 뷰 컨트롤러 인스턴스를 가져온다.
        if let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") {
//            Present로 화면을 전환한다. 
            self.present(uvc,animated: true)
        }
    }
}


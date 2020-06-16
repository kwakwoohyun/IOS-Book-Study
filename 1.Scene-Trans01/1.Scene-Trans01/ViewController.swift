//
//  ViewController.swift
//  1.Scene-Trans01
//
//  Created by 곽우현 on 2020/06/16.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func moveNext(_ sender: Any) {
        
//        1. 스토리보드가 한개일 경우 self.storyboard
//        이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조
//        옵셔널 타입 : self.storyboard 값이 nil일수도 있다. -> 옵셔널 바인딩 필요
        if let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") {
            //        2. 스토리보드가 여러개일경우
            //        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            //        storyboard?.instantiateViewController(identifier: "SecondVC")
                    
                    
            //        화면 전환할 때의 애니메이션 타입
            //        1. UIModalTransitionStyle.coverVertical
            //        2. UIModalTransitionStyle.crossDissolve
            //        3. UIModalTransitionStyle.flipHorizontal
            //        4. UIModalTransitionStyle.partialCurl
                    uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
                    
            //        인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
                    self.present(uvc, animated: true, completion: nil)
        }
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


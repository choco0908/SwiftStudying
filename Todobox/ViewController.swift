//
//  ViewController.swift
//  Todobox
//
//  Created by HG90 on 2020/10/18.
//  Copyright © 2020 HG90. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //click event
    @IBAction func clickMoveBtn(_ sender: Any) {
        print("Click Move")
        //storyboard find controller : DetailController
        
        //if not nil (옵셔널바인딩)
        if let detailView = self.storyboard?.instantiateViewController(identifier: "DetailController") {
            //move controller = navi
            self.navigationController?.pushViewController(detailView , animated: true)
        }
        
        
        
    }
}

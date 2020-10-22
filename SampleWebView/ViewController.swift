//
//  ViewController.swift
//  SampleWebView
//
//  Created by HG90 on 2020/10/22.
//  Copyright © 2020 HG90. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webviewMain: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //1. url string
        
        let urlString = "https://www.google.com"
        
        if let url = URL(string: urlString) {
            let urlRequest = URLRequest(url: url)
            webviewMain.load(urlRequest)
        }
        //2. url > request
        
        
        
        //3. req > load
        
        
    }


}


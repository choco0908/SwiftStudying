//
//  ViewController.swift
//  TableViewSample
//
//  Created by HG90 on 2020/10/22.
//  Copyright © 2020 HG90. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainTableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //1. 임의의 셀 만들기
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "TableCellType1")
        
        
        cell.textLabel?.text = "TEST\(indexPath.row)"
        
        return cell
        
        //2.
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainTableview.delegate = self
        mainTableview.dataSource = self
    }

    //Tableview
    //정갈한 뷰
    
    //1. 데이터 종류?
    //2. 데이터 갯수
    //3. (옵션) 데이터 행 눌렀다.
    
}


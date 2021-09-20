//
//  DebugViewController.swift
//  создание ПР с переходами
//
//  Created by Ruzal  on 13.09.2021.
//

import UIKit

class DebugViewController:UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "BasicCell", bundle: nil), forCellReuseIdentifier: Const.Cell.basic)
                                
                                
        // Do any additional setup after loading the view.
    }
}
extension DebugViewController:UITableViewDataSource {
 //   func numberOfSections(in tableView: UITableView) -> Int {
//        return 5
  //  }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Const.Cell.basic, for: indexPath)
    }
    
}

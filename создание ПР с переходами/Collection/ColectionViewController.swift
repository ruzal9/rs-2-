//
//  ColectionViewController.swift
//  создание ПР с переходами
//
//  Created by Ruzal  on 17.09.2021.
//

import UIKit

class CollectionViewController:UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
extension CollectionViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
    }
    
    
}

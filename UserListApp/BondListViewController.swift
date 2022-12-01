//
//  BondListViewController.swift
//  UserListApp
//
//  Created by ksd on 01/12/2022.
//

import UIKit

class BondListViewController: UIViewController {
    
    @IBOutlet weak var bondListTableView: UITableView! {
        didSet {
            bondListTableView.dataSource = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension BondListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BondService.bondList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bondCell", for: indexPath) as? BondCell
        cell?.bondNavne.text = BondService.bondList[indexPath.row]
        return cell!
    }
}


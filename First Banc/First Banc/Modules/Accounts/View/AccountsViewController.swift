//
//  AccountsViewController.swift
//  First Banc
//
//  Created by iMac on 10/8/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import UIKit

class AccountsViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var viewModel=AccountsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    
    static func instantiate() -> AccountsViewController {
        let storyboard = UIStoryboard(name: "Accounts", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! AccountsViewController
        
        return vc
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension AccountsViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AccountTableViewCell
        cell.setup(vm: viewModel, index: indexPath.row)
        
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.container.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
}

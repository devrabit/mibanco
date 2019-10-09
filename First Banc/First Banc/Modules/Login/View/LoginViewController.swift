//
//  LoginViewController.swift
//  First Banc
//
//  Created by iMac on 10/7/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToHome(_ sender: Any) {
        let vc=HomeViewController.instantiate()
        self.navigationController?.pushViewController(HomeViewController.instantiate(), animated: true)
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

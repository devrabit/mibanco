//
//  HomeViewController.swift
//  First Banc
//
//  Created by iMac on 10/7/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    enum views {
        case wheater
        case pay
        case receive
        case accounts
    }
    
    static func instantiate() -> HomeViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! HomeViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func updateView(_ module:views){
        var subview=UIView()
        switch module {
        case .wheater:
            subview=WeatherViewController.instantiate().view
        case .pay:
            subview=PayViewController.instantiate().view
        case .accounts:
            subview=AccountsViewController.instantiate().view
        case .receive:
            subview=ReceiveViewController.instantiate().view
        
        }
        subview.frame = containerView.bounds
        
        containerView.addSubview(subview)
        
    }
    
    @IBAction func showWheater(_ sender: Any) {
        updateView(.wheater)
            
        
    }
    
    @IBAction func showCuentas(_ sender: Any) {
        updateView(.accounts)
    }
    
    @IBAction func showPay(_ sender: Any) {
        updateView(.pay)
    }
    
    @IBAction func showScan(_ sender: Any) {
        updateView(.receive)
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

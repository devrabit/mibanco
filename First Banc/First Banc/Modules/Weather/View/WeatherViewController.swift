//
//  WeatherViewController.swift
//  First Banc
//
//  Created by iMac on 10/8/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    static func instantiate() -> WeatherViewController {
        let storyboard = UIStoryboard(name: "Weather", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! WeatherViewController
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

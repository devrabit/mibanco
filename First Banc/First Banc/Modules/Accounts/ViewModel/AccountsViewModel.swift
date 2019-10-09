//
//  AccountsViewModel.swift
//  First Banc
//
//  Created by iMac on 10/8/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import Foundation
import UIKit

class AccountsViewModel{
    
    typealias CellModel =  (type:String,money:Int)
    var container=[CellModel]()
    
    init() {
        container.append((type:"ahorros",money:20000))
        container.append((type:"ahorros",money:30000))
        container.append((type:"corriente",money:70000))
    }
}

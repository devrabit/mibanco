//
//  PayViewModel.swift
//  First Banc
//
//  Created by iMac on 10/8/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import Foundation
import UIKit

class PayViewModel{
    
    struct Cells {
        let labelAndButton="labelAndButton"
        let labelAndText="labelAndText"
    }
    
    struct IDs {
        let selecAccount="selecAccount"
        let selectType="selectType"
        let money="money "
    }
    
    typealias CellModel =  (cell:String,id:String,height:CGFloat)
    
    let cells=Cells()
    let ids=IDs()
    var container=[CellModel]()
    
    init() {
        container.append((cell:cells.labelAndButton,id:ids.selecAccount,height:82))
        container.append((cell:cells.labelAndButton,id:ids.selecAccount,height:82))
        container.append((cell:cells.labelAndText,id:ids.selecAccount,height:82))
    }
    
}

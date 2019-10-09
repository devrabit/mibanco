//
//  AccountTableViewCell.swift
//  First Banc
//
//  Created by iMac on 10/8/19.
//  Copyright © 2019 Wigilabs. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell {

    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblMoney: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup( vm:AccountsViewModel, index: Int){
        
        let item=vm.container[index]
        lblType.text="Cuenta de \(item.type)"
        lblMoney.text="$\(item.money)"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  abcView.swift
//  teste1
//
//  Created by ROBSON NUNES DE SOUZA on 04/02/17.
//  Copyright © 2017 ROBSON NUNES DE SOUZA. All rights reserved.
//

import UIKit

class abcView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var butto1: UIButton!
    
    class func instanceFromNib() -> abcView {
        return UINib(nibName: "abcView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! abcView
    }

}

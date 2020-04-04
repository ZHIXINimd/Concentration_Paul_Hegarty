//
//  RoundCornerButton.swift
//  Concentration_Paul_Hegarty
//
//  Created by Bruce Wang on 4/4/20.
//  Copyright © 2020 Bruce Wang. All rights reserved.
//

import UIKit

class RoundCornerButton: UIButton {
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOpacity = 0.4
        self.layer.shadowOffset = CGSize.zero
    }

}

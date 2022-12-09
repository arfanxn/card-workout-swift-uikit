//
//  CWButton.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 09/12/22.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure () {
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 18 , weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}

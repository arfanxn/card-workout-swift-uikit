//
//  CardSelectionVC.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 09/12/22.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImgVIew : UIImageView = .init()
    let stopBtn : UIButton = {
        let btn = CWButton()
        btn.setTitle("Stop", for: .normal)
        btn.backgroundColor = .systemRed
        return btn
    }()
    let restartBtn : UIButton = {
        let btn = CWButton()
        btn.setTitle("Restart", for: .normal)
        btn.backgroundColor = .systemGreen
        return btn
    }()
    let ruleInfoBtn : UIButton = {
        let btn = CWButton()
        btn.setTitle("Rules", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        self.configureUI()
    }
    
    func configureUI () {
        self.configureCardImgView()
    }
    
    func configureCardImgView () {
        self.view.addSubview(self.cardImgVIew)
        self.cardImgVIew.translatesAutoresizingMaskIntoConstraints = false
        self.cardImgVIew.image = .init(systemName: "heart.fill")
        
        NSLayoutConstraint.activate([
            self.cardImgVIew.widthAnchor.constraint(equalToConstant: 250),
            self.cardImgVIew.heightAnchor.constraint(equalToConstant: 350),
            self.cardImgVIew.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.cardImgVIew.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -75)
        ])
    }
    
}

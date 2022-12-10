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
        btn.configure()
        btn.setTitle("Restart", for: .normal)
        btn.backgroundColor = .systemGreen
        return btn
    }()
    let ruleInfoBtn : UIButton = {
        let btn = CWButton()
        btn.configure()
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
        self.configureStopBtn()
        self.configureRestartBtn()
        self.configureRuleInfoBtn()
    }
    
    func configureCardImgView () {
        self.view.addSubview(self.cardImgVIew)
        self.cardImgVIew.translatesAutoresizingMaskIntoConstraints = false
        self.cardImgVIew.image = CardDeck.images.randomElement()
        
        NSLayoutConstraint.activate([
            self.cardImgVIew.widthAnchor.constraint(equalToConstant: 250),
            self.cardImgVIew.heightAnchor.constraint(equalToConstant: 350),
            self.cardImgVIew.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.cardImgVIew.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopBtn () {
        self.view.addSubview(self.stopBtn)
        
        NSLayoutConstraint.activate([ 
            self.stopBtn.widthAnchor.constraint(equalToConstant: 250),
            self.stopBtn.heightAnchor.constraint(equalToConstant: 50),
            self.stopBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.stopBtn.topAnchor.constraint(equalTo: self.cardImgVIew.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRestartBtn () {
        self.view.addSubview(self.restartBtn)

        NSLayoutConstraint.activate([
            self.restartBtn.widthAnchor.constraint(equalToConstant: 115),
            self.restartBtn.heightAnchor.constraint(equalToConstant: 50),
            self.restartBtn.leadingAnchor.constraint(equalTo: self.stopBtn.leadingAnchor),
            self.restartBtn.topAnchor.constraint(equalTo: self.stopBtn.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRuleInfoBtn () {
        self.view.addSubview(self.ruleInfoBtn)

        NSLayoutConstraint.activate([
            self.ruleInfoBtn.widthAnchor.constraint(equalToConstant: 115),
            self.ruleInfoBtn.heightAnchor.constraint(equalToConstant: 50),
            self.ruleInfoBtn.trailingAnchor.constraint(equalTo: self.stopBtn.trailingAnchor),
            self.ruleInfoBtn.topAnchor.constraint(equalTo: self.stopBtn.bottomAnchor, constant: 20)
        ])
    }
    
}

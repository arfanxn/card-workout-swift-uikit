//
//  CardSelectionVC.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 09/12/22.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    private let cardImgVIew : UIImageView = .init()
    private let stopBtn = CWButton()
    private let restartBtn = CWButton()
    private let ruleInfoBtn = CWButton()
    
    let cards : [UIImage] = CardDeck.images
    
    var timer : Timer!;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        self.ruleInfoBtn.addTarget(self, action: #selector(self.presentRuleDetailVC), for: .touchUpInside)
        
        self.configureUI()
        self.startTimer()
    }
    
    @objc private func startTimer () {
        self.timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(self.shuffleCard), userInfo: nil, repeats: true)
    }
    
    @objc private func stopTimer () {
        self.timer.invalidate()
    }
    
    @objc private func restartTimer () {
        self.stopTimer()
        self.startTimer()
    }
    
    @objc private func shuffleCard () {
        self.cardImgVIew.image = CardDeck.images.randomElement()
    }
    
    // MARK: functions of UI
    
    public func configureUI () {
        self.configureCardImgView()
        self.configureStopBtn()
        self.configureRestartBtn()
        self.configureRuleInfoBtn()
    }
    
    private func configureCardImgView () {
        self.view.addSubview(self.cardImgVIew)
        self.cardImgVIew.translatesAutoresizingMaskIntoConstraints = false
        self.cardImgVIew.image = .init(named: "10H")
        
        NSLayoutConstraint.activate([
            self.cardImgVIew.widthAnchor.constraint(equalToConstant: 250),
            self.cardImgVIew.heightAnchor.constraint(equalToConstant: 350),
            self.cardImgVIew.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.cardImgVIew.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -75)
        ])
    }
    
    private func configureStopBtn () {
        self.view.addSubview(self.stopBtn)
        
        self.stopBtn.configure()
        self.stopBtn.setTitle("Stop", for: .normal)
        self.stopBtn.backgroundColor = .systemRed
        
        self.stopBtn.addTarget(self, action: #selector(self.stopTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            self.stopBtn.widthAnchor.constraint(equalToConstant: 250),
            self.stopBtn.heightAnchor.constraint(equalToConstant: 50),
            self.stopBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.stopBtn.topAnchor.constraint(equalTo: self.cardImgVIew.bottomAnchor, constant: 20)
        ])
    }
    
    private func configureRestartBtn () {
        self.view.addSubview(self.restartBtn)
        
        self.restartBtn.configure()
        self.restartBtn.setTitle("Restart", for: .normal)
        self.restartBtn.backgroundColor = .systemGreen
        
        self.restartBtn.addTarget(self, action: #selector(self.restartTimer), for: .touchUpInside)

        NSLayoutConstraint.activate([
            self.restartBtn.widthAnchor.constraint(equalToConstant: 115),
            self.restartBtn.heightAnchor.constraint(equalToConstant: 50),
            self.restartBtn.leadingAnchor.constraint(equalTo: self.stopBtn.leadingAnchor),
            self.restartBtn.topAnchor.constraint(equalTo: self.stopBtn.bottomAnchor, constant: 20)
        ])
    }
    
    private func configureRuleInfoBtn () {
        self.view.addSubview(self.ruleInfoBtn)
        
        self.ruleInfoBtn.configure()
        self.ruleInfoBtn.setTitle("Rules", for: .normal)
        self.ruleInfoBtn.backgroundColor = .systemBlue
        
        self.ruleInfoBtn.addTarget(self, action: #selector(self.presentRuleDetailVC), for: .touchUpInside)

        NSLayoutConstraint.activate([
            self.ruleInfoBtn.widthAnchor.constraint(equalToConstant: 115),
            self.ruleInfoBtn.heightAnchor.constraint(equalToConstant: 50),
            self.ruleInfoBtn.trailingAnchor.constraint(equalTo: self.stopBtn.trailingAnchor),
            self.ruleInfoBtn.topAnchor.constraint(equalTo: self.stopBtn.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func presentRuleDetailVC () {
        let vc = RuleDetailVC();
        self.present(vc, animated: true)
     }
}

//
//  CardSelectionVC.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 08/12/22.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    private var cardImages : [UIImage] = CardDeck.images
    
    var timer : Timer = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureButtons()
        startTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.timer.invalidate()
    }
    
    func configureButtons () {
        buttons.forEach { button in
            button.layer.cornerRadius = 10
        }
    }
    
    func startTimer () {
        self.timer = Timer
            .scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(self.shuffleCard), userInfo: nil, repeats: true)
    }
    
    @objc func shuffleCard () {
        cardImageView.image = self.cardImages.randomElement() ?? .init(named: "AS")
    }
    
    @IBAction func stopBtnTapped(_ sender: UIButton) {
        self.timer.invalidate()
    }
    
    @IBAction func restartBtnTapped(_ sender: UIButton) {
        self.timer.invalidate()
        self.startTimer()
        
    }
}

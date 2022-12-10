//
//  RuleDetailVC.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 10/12/22.
//

import UIKit

class RuleDetailVC: UIViewController {
    
    private let titleLabel = UILabel()
    private let bodyLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground

        self.configureUI()
    }
    
    public func configureUI () {
        self.configureTitleLabel()
        self.configureBodyLabel()
    }
    
    private func configureTitleLabel () {
        self.view.addSubview(self.titleLabel)
        
        self.titleLabel.text = "Rules"
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.font = .systemFont(ofSize: 40,weight: .bold)
        self.titleLabel.textAlignment = .center

        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
        ])
    }
    
    private func configureBodyLabel () {
        self.view.addSubview(self.bodyLabel)
        
        self.bodyLabel.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rutrum pretium sodales. Duis ex sem, efficitur ut odio quis, pretium congue ipsum. Quisque ac mollis mauris. Sed ultrices posuere velit eleifend ornare. Mauris vestibulum ornare tortor, sit amet scelerisque augue varius eget. In auctor ante ut metus interdum venenatis. Aliquam vitae scelerisque massa. Donec porta ullamcorper nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae risus a augue bibendum mattis quis eu ipsum. Mauris viverra non orci vel egestas. Aliquam at risus et leo aliquet aliquam eget quis ante. Maecenas massa justo, laoreet nec iaculis ultrices, dictum tempus diam. Suspendisse ornare ligula turpis, eu pharetra enim tempus vitae. Nulla vulputate, libero a commodo placerat, augue justo posuere felis, vitae imperdiet risus lectus id nisl. Duis aliquet ante a tellus venenatis, eget volutpat augue porta.
        """
        self.bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        self.bodyLabel.lineBreakMode = .byWordWrapping
        self.bodyLabel.numberOfLines = 0
        self.bodyLabel.font = .systemFont(ofSize: 18)
        self.bodyLabel.textAlignment = .natural

        NSLayoutConstraint.activate([
            self.bodyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.bodyLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
            self.bodyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            self.bodyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
}

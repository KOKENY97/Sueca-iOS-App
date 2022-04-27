//
//  RulesVCV.swift
//  Card App iOS
//
//  Created by user209843 on 4/11/22.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let explanationLabel = UILabel()
    let gameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureGameLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Regras"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "O valor de cada carta representa o jogo da rodada."
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureGameLabel() {
        view.addSubview(gameLabel)
        gameLabel.translatesAutoresizingMaskIntoConstraints = false
        gameLabel.text = "A = Escolhe UMA pessoa para beber\n\n 2 = Escolhe DUAS pessoas para beber\n\n 3 = Escolhe TRES pessoas para beber\n\n 4 = C,S composto\n\n 5 = Fui na feira\n\n 6 = Banheiro\n\n 7 = Jogo do Pi\n\n 8 = Regra\n\n 9 = Continencia\n\n 10 = Patinho\n\n J = Todos os homens bebem\n\n Q = Todas as mulheres bebem\n\n K = Todo mundo bebe"
        gameLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        gameLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            gameLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 35),
            gameLabel.widthAnchor.constraint(equalToConstant: 350),
            gameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    		
}
	

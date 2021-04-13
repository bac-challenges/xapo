//
//  StartController.swift
//  Xapo
//
//  Created by emile on 13/04/2021.
//

import UIKit

final class StartController: UIViewController {
    
    private let background = StartController.background
    private let container = StartController.container
    private var logo = StartController.logo
    private let titleLabel = StartController.titleLabel
    private let bodyLabel = StartController.bodyLabel
    private let enterButton = StartController.enterButton
    private let privacyLabel = StartController.privacyLabel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - UI
private extension StartController {
    
    func setupView() {
        
        view.backgroundColor = .white
        
        view.addSubview(background)
        view.addSubview(container)
        
        container.addArrangedSubview(logo)
        container.addArrangedSubview(titleLabel)
        container.addArrangedSubview(bodyLabel)
        
        view.addSubview(enterButton)
        view.addSubview(privacyLabel)
        
        setupLayout()
    }
    
    func setupLayout() {

        background.anchor(top: view.topAnchor,
                          bottom: view.bottomAnchor,
                          left: view.leftAnchor,
                          right: view.rightAnchor)
        
        container.anchor(left: view.leftAnchor, paddingLeft: 27,
                         right: view.rightAnchor, paddingRight: 27,
                         centerY: view.centerYAnchor, paddingCenterY: -50)
        
        logo.anchor(width: 100, height: 100)
        
        enterButton.anchor(bottom: view.bottomAnchor, paddingBottom: 80,
                           width: 280, height: 48,
                           centerX: view.centerXAnchor)
        
        privacyLabel.anchor(bottom: view.bottomAnchor, paddingBottom: 30,
                            centerX: view.centerXAnchor)
    }
}

// MARK: - Components
private extension StartController {
    
    static var background: UIView {
        let background = UIView()
        background.backgroundColor = UIColor(named: "bgColor")
        return background
    }
    
    static var container: UIStackView {
        let stack = UIStackView(frame: CGRect.zero)
        stack.spacing = 10
        stack.alignment = .center
        stack.axis = .vertical
        return stack
    }
    
    static var logo: UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        return image
    }
    
    static var titleLabel: UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .white
        label.text = "Welcome to iOS Test"
        label.textAlignment = .center
        return label
    }
    
    static var bodyLabel: UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.text = "iOS Test for Xapo bank \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna."
        label.textAlignment = .center
        return label
    }
    
    static var enterButton: UIButton {
        let button = UIButton()
        button.setTitle("Enter the app", for: .normal)
        button.backgroundColor = UIColor(named: "softRed")
        button.layer.cornerRadius = 24
        return button
    }
    
    static var privacyLabel: UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .white
        label.text = "Privacy policy and Terms of use"
        label.textAlignment = .center
        return label
    }
}

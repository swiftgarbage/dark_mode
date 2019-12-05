//
//  UIContentViewController.swift
//  DarkMode
//
//  Created by Алексей on 13.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import UIKit
import SwiftUI

class UIDynamicColorViewController: UIViewController {
    
    var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialize()
    }
    
    private func initialize() {
        view.backgroundColor = dynamicColor//UIColor(named: "fone")
        
        addStackView()
        addAllColors()
    }
    
    let dynamicColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        switch traitCollection.userInterfaceStyle {
        case .unspecified, .light:
            return .blue
        case .dark:
            return .yellow
        @unknown default:
            fatalError()
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
    }
    
    private func addAllColors() {
        
        stackView.addArrangedSubview(view(.systemRed, text: ".systemRed"))
        stackView.addArrangedSubview(view(.systemGreen, text: ".systemGreen"))
        stackView.addArrangedSubview(view(.systemBlue, text: ".systemBlue"))
        stackView.addArrangedSubview(view(.systemOrange, text: ".systemOrange"))
        stackView.addArrangedSubview(view(.systemYellow, text: ".systemYellow"))
        stackView.addArrangedSubview(view(.systemPink, text: ".systemPink"))
        stackView.addArrangedSubview(view(.systemPurple, text: ".systemPurple"))
        stackView.addArrangedSubview(view(.systemTeal, text: ".systemTeal"))
        stackView.addArrangedSubview(view(.systemIndigo, text: ".systemIndigo"))
        
        stackView.addArrangedSubview(view(.systemGray, text: ".systemGray"))
        stackView.addArrangedSubview(view(.systemGray2, text: ".systemGray2"))
        stackView.addArrangedSubview(view(.systemGray3, text: ".systemGray3"))
        stackView.addArrangedSubview(view(.systemGray4, text: ".systemGray4"))
        stackView.addArrangedSubview(view(.systemGray5, text: ".systemGray5"))
        stackView.addArrangedSubview(view(.systemGray6, text: ".systemGray6"))

        stackView.addArrangedSubview(view(.label, text: ".label", textColor: .systemBackground))
        stackView.addArrangedSubview(view(.secondaryLabel, text: ".secondaryLabel"))
        stackView.addArrangedSubview(view(.tertiaryLabel, text: ".tertiaryLabel"))
        stackView.addArrangedSubview(view(.quaternaryLabel, text: ".quaternaryLabel"))
        
        stackView.addArrangedSubview(view(.link, text: ".link"))
        stackView.addArrangedSubview(view(.placeholderText, text: ".placeholderText"))
        stackView.addArrangedSubview(view(.separator, text: ".separator"))
        stackView.addArrangedSubview(view(.opaqueSeparator, text: ".opaqueSeparator"))
        
        stackView.addArrangedSubview(view(.systemBackground, text: ".systemBackground"))
        stackView.addArrangedSubview(view(.secondarySystemBackground, text: ".secondarySystemBackground"))
        stackView.addArrangedSubview(view(.tertiarySystemBackground, text: ".tertiarySystemBackground"))
        stackView.addArrangedSubview(view(.systemGroupedBackground, text: ".systemGroupedBackground"))
        stackView.addArrangedSubview(view(.secondarySystemGroupedBackground, text: ".secondarySystemGroupedBackground"))
        
        stackView.addArrangedSubview(view(.systemFill, text: ".systemFill"))
        stackView.addArrangedSubview(view(.secondarySystemFill, text: ".secondarySystemFill"))
        stackView.addArrangedSubview(view(.tertiarySystemFill, text: ".tertiarySystemFill"))
        stackView.addArrangedSubview(view(.quaternarySystemFill, text: ".quaternarySystemFill"))
        
        stackView.addArrangedSubview(view(.lightText, text: ".lightText"))
        stackView.addArrangedSubview(view(.darkText, text: ".darkText", textColor: .white))
    }
    
    private func addStackView() {
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func view(_ color: UIColor, text: String, textColor: UIColor = .label) -> UIView {
        
        let view = UIView(frame: .zero)
        view.backgroundColor = color
    
        let nameLabel = UILabel(frame: .zero)
        nameLabel.text = text
        nameLabel.textColor = textColor
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }
}

struct UIDynamicColorViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIDynamicColorViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<UIDynamicColorViewControllerRepresentable>) -> UIDynamicColorViewController {
        UIDynamicColorViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIDynamicColorViewController, context: UIViewControllerRepresentableContext<UIDynamicColorViewControllerRepresentable>) {
        
    }
}

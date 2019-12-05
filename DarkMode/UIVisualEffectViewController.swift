//
//  UIBlurColorViewController.swift
//  DarkMode
//
//  Created by Алексей on 20.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import UIKit
import SwiftUI

class UIVisualEffectViewController: UIViewController {
    
    var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialize()
    }
    
    private func initialize() {
        
        addImageView()
        addStackView()
        addAllBlurColors()
    }
    
    private func addAllBlurColors() {
        
        stackView.addArrangedSubview(view(.dark, text: ".dark", textColor: .white))
        stackView.addArrangedSubview(view(.light, text: ".light"))
        stackView.addArrangedSubview(view(.extraLight, text: ".extraLight", textColor: .black))
        stackView.addArrangedSubview(view(.prominent, text: ".prominent"))
        stackView.addArrangedSubview(view(.regular, text: ".regular"))
        stackView.addArrangedSubview(view(.systemChromeMaterial, text: ".systemChromeMaterial"))
        stackView.addArrangedSubview(view(.systemChromeMaterialDark, text: ".systemChromeMaterialDark", textColor: .white))
        stackView.addArrangedSubview(view(.systemChromeMaterialLight, text: ".systemChromeMaterialLight", textColor: .black))
        stackView.addArrangedSubview(view(.systemMaterial, text: ".systemMaterial"))
        stackView.addArrangedSubview(view(.systemMaterialDark, text: ".systemMaterialDark", textColor: .white))
        stackView.addArrangedSubview(view(.systemMaterialLight, text: ".systemMaterialLight", textColor: .black))
        stackView.addArrangedSubview(view(.systemThickMaterial, text: ".systemThickMaterial"))
        stackView.addArrangedSubview(view(.systemThickMaterialDark, text: ".systemThickMaterialDark", textColor: .white))
        stackView.addArrangedSubview(view(.systemThickMaterialLight, text: ".systemThickMaterialLight", textColor: .black))
        stackView.addArrangedSubview(view(.systemThinMaterial, text: ".systemThinMaterial"))
        stackView.addArrangedSubview(view(.systemThinMaterialDark, text: ".systemThinMaterialDark", textColor: .white))
        stackView.addArrangedSubview(view(.systemThinMaterialLight, text: ".systemThinMaterialLight", textColor: .black))
        stackView.addArrangedSubview(view(.systemUltraThinMaterial, text: ".systemUltraThinMaterial"))
        stackView.addArrangedSubview(view(.systemUltraThinMaterialDark, text: ".systemUltraThinMaterialDark", textColor: .white))
        stackView.addArrangedSubview(view(.systemUltraThinMaterialLight, text: ".systemUltraThinMaterialLight"))
        
    }
    
    private func addImageView() {
        guard let path = Bundle.main.path(forResource: "iPhone11", ofType: "png") else { return }
        let url = URL(fileURLWithPath: path)
        
        guard let data = try? Data(contentsOf: url) else { return }
        
        let image = UIImage(data: data)
        let imageView = UIImageView(image: image)
        imageView.frame = view.bounds
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(imageView)
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
    
    private func view(_ style: UIBlurEffect.Style, text: String, textColor: UIColor = .label) -> UIView {
        
        let view = UIView(frame: .zero)
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
        
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

struct UIVisualEffectViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIVisualEffectViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<UIVisualEffectViewControllerRepresentable>) -> UIVisualEffectViewController {
        UIVisualEffectViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIVisualEffectViewController, context: UIViewControllerRepresentableContext<UIVisualEffectViewControllerRepresentable>) {
        
    }
}

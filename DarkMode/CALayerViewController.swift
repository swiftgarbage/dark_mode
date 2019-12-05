//
//  CALayerViewController.swift
//  DarkMode
//
//  Created by Алексей on 22.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import UIKit
import SwiftUI

class CALayerViewController: UIViewController {
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let resolvedColor = UIColor.label//.resolvedColor(with: traitCollection)
        view.layer.backgroundColor = resolvedColor.cgColor
    }
}

struct CALayerViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = CALayerViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CALayerViewControllerRepresentable>) -> CALayerViewController {
        CALayerViewController()
    }
    
    func updateUIViewController(_ uiViewController: CALayerViewController, context: UIViewControllerRepresentableContext<CALayerViewControllerRepresentable>) {
        
    }
}

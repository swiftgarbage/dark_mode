//
//  RootViewController.swift
//  DarkMode
//
//  Created by Алексей on 21.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct RootViewController: View {
    
    @State var showDarkMode = false
    @State var showDynamicColor = false
    @State var showUserColor = false
    @State var showBlurColor = false
    @State var showSFSymbols = false
    @State var showCALayers = false
    
    var body: some View {
        VStack(spacing: 30) {
            Button(action: {
                self.showDarkMode.toggle()
            }) {
                Text("Dark mode")
            }
            .sheet(isPresented: $showDarkMode) {
                DarkModeView()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            Button(action: {
                self.showDynamicColor.toggle()
            }) {
                Text("Dynamic color")
            }
            .sheet(isPresented: $showDynamicColor) {
                UIDynamicColorViewControllerRepresentable()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            Button(action: {
                self.showUserColor.toggle()
            }) {
                Text("User color")
            }
            .sheet(isPresented: $showUserColor) {
                CustomColorView()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            Button(action: {
                self.showBlurColor.toggle()
            }) {
                Text("Blur color")
            }
            .sheet(isPresented: $showBlurColor) {
                UIVisualEffectViewControllerRepresentable()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            Button(action: {
                self.showSFSymbols.toggle()
            }) {
                Text("SF Symbols")
            }
            .sheet(isPresented: $showSFSymbols) {
                SFSymbolsView()
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            Button(action: {
                self.showCALayers.toggle()
                
            }) {
                Text("CALayer")
            }
            .sheet(isPresented: $showCALayers) {
                CALayerViewControllerRepresentable()
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

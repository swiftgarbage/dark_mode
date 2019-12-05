//
//  ContentView.swift
//  DarkMode
//
//  Created by Алексей on 13.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct SFSymbolsView: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Color(UIColor.systemBackground))
                .edgesIgnoringSafeArea(.all)
            Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(Color(UIColor.systemRed))
        }
        
    }
}

struct SFSymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsView().environment(\.colorScheme, .light)
    }
}


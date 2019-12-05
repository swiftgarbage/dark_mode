//
//  CustomImageView.swift
//  DarkMode
//
//  Created by Алексей on 22.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Color(UIColor.systemBackground))
                .edgesIgnoringSafeArea(.all)
            Image("apple")
        }
        
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomImageView()
            CustomImageView().environment(\.colorScheme, .dark)
        }
    }
}

//
//  DarkModeView.swift
//  DarkMode
//
//  Created by Алексей on 22.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct DarkModeView: View {
    var body: some View {
        ZStack {
            Spacer()
          .background(Color(UIColor.systemBackground))
                .edgesIgnoringSafeArea(.all)
            Text("Hello, World!")
        }
    }
}

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeView()
            DarkModeView().environment(\.colorScheme, .dark)
        }
    }
}

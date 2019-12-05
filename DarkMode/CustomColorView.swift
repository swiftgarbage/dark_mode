//
//  UserColorView.swift
//  DarkMode
//
//  Created by Алексей on 22.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct CustomColorView: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Color("fone"))
                .edgesIgnoringSafeArea(.all)
            Text("Hello, World!")
                .foregroundColor(.black)
        }
        
    }
}

struct CustomColorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomColorView()
            CustomColorView().environment(\.colorScheme, .dark)
        }
    }
}

//
//  ContentView.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 07/10/2024.
//

import SwiftUI

struct SplashScreenView: View { //make ir work
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            Main()
        } else {
            VStack {
                Image(systemName: "leaf.fill") //change with logo
                    .foregroundStyle(Color(.green))
                    .padding()
                Text("GIRA EL SOL") //adjust to make it nice
                    .font(.headline)
            }
            .onAppear { //simulate delay
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

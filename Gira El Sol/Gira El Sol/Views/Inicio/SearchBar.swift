//
//  SearchBar.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var prompt: String
    
    var body: some View {
        VStack {
            HStack { //make the symbols bigger
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField(prompt, text: $searchText)
                    Image(systemName: "camera.viewfinder")
                }
                .padding(15)
                .background(Color(.white))
                .padding(.horizontal)
                .overlay(
                RoundedRectangle(cornerRadius: 17)
                    .stroke(Color.black, lineWidth: 1))
                .frame(width: UIScreen.main.bounds.width * 0.8)
                
                Image(systemName: "slider.horizontal.3")
                    .padding(17)
                    .background(Color(.white))
                    .overlay(
                    RoundedRectangle(cornerRadius: 17)
                        .stroke(Color.black, lineWidth: 1))
            }
        }
        .padding(.top)
    }
}

struct SearchBarView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText, prompt: "Search...")
            }
        }
    }
}

#Preview {
    SearchBarView()
}

//
//  InicioContent.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct Main: View {
    @State private var selectedTab = 0
    @State private var showMenu = false
    @State private var image: UIImage?
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    TopBar(showMenu: $showMenu, symbol: .constant("bell"))

                    TabView(selection: $selectedTab) {
                        MisJardines() //JARDINES TAB
                            .tag(0)
                        if let image {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                        }
                        CamaraView(selectedImage: $image) //SCAN TAB
                            .tag(1)
                        MisJardines() //ENCICLOPEDIA TAB
                            .tag(2)
                        MiPerfil() //MI PERFIL TAB
                            .tag(3)
                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    BottomBar(selectedTab: $selectedTab)
                }
            }
            if showMenu {
                Menu(showMenu: $showMenu)
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut, value: showMenu)
                    .zIndex(1)
            }
        }
    }
}

#Preview {
    Main()
}

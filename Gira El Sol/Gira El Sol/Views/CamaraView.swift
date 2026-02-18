//
//  CamaraView.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 18/02/2026.
//

import SwiftUI
import UIKit

struct CamaraView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @Binding var selectedImage: UIImage?
        
    var body: some View {
        VStack(spacing: 24) {
            
            Text("Agregar Foto")
                .font(.title2)
                .bold()
                .padding(.top)
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(.systemGray6))
                    .frame(height: 350)
                
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                } else {
                    VStack(spacing: 12) {
                        Image(systemName: "camera.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.bottomBarGreen)
                        
                        Text("No hay imagen seleccionada")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 40) {
                
                // Cámara
                Button {
                    sourceType = .camera
                    showImagePicker = true
                } label: {
                    VStack {
                        Image(systemName: "camera.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.bottomBarGreen)
                        Text("Cámara")
                            .foregroundStyle(Color.black)
                    }
                }
                
                // Galería
                Button {
                    sourceType = .photoLibrary
                    showImagePicker = true
                } label: {
                    VStack {
                        Image(systemName: "photo.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.bottomBarGreen)
                        Text("Galería")
                            .foregroundStyle(Color.black)
                    }
                }
            }
            
            Spacer()
            
            if selectedImage != nil {
                Button {
                    dismiss()
                } label: {
                    Text("Usar esta foto")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.bottomBarGreen)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.horizontal)
                }
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(
                selectedImage: $selectedImage,
                sourceType: sourceType
            )
        }
    }
}

struct CamaraViewItemBindingView: View {
    @State private var image: UIImage? = nil
    
    var body: some View {
        CamaraView(selectedImage: $image)
    }
}

#Preview {
        CamaraViewItemBindingView()
}

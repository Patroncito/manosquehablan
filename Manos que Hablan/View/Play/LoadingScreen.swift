//
//  LoadingScreen.swift
//  Manos que Hablan
//
//  Created by Fermin Alfonso Bañuelos Patrón on 15/05/23.
//

import SwiftUI



struct LoadingScreen: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            Home()
        } else {
            VStack {
                VStack {
                    Image("appIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .foregroundColor(.red)
                    Text("Manos que Hablan")
                        .font(Font.custom("Baskerville-Bold", size: 35))
                        .foregroundColor(.white)
                 
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                .background(
                    
                    LinearGradient(
                                      gradient: Gradient(colors: [
                                          Color(hex: "FFA0E1"),
                                          Color(hex: "594C8C")
                                      ]),
                                      startPoint: .top,
                                      endPoint: .bottom
                                  )
                    )
            
            
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

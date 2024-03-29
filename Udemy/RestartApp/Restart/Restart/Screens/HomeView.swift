//
//  HomeView.swift
//  Restart
//
//  Created by Grazielli Berti on 27/01/23.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Property
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //MARK: - Header
                
                Spacer()
                
                ZStack {
                    CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                    
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever(),
                            value: isAnimating
                    )
                }
                
                //MARK: - Center
                Text("The time that leads to mastery is dependent on the intensity of our focus.")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever(),
                            value: isAnimating
                    )
                
                //MARK: - Footer
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        isOnboardinViewActive = true
                        playSound(sound: "success", type: "m4a")
                    }
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                } //: Button
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            } //: VStack
        } //: ZStack
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

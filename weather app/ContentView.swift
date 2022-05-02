//
//  ContentView.swift
//  weather app
//
//  Created by Samuel Vieira on 01/05/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.03, green: 0.03, blue: 0.60), .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                SpriteView(scene: RainFall(), options: [.allowsTransparency]).ignoresSafeArea()
                VStack {
                    Text(viewModel.temperature)
                        .font(.system(size: 44))
                    Text(viewModel.title)
                        .font(.system(size: 24))
                    Text(viewModel.description)
                        .font(.system(size: 24))
                }
                .navigationTitle(viewModel.timezone)
            }
        }
    }
}

class RainFall: SKScene {
    override func sceneDidLoad() {
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        anchorPoint = CGPoint(x: 0.5, y: 1)
        
        backgroundColor = .clear
        
        let node = SKEmitterNode(fileNamed: "MyParticle.sks")!
        addChild(node)
        
        node.particlePositionRange.dx = UIScreen.main.bounds.width
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}

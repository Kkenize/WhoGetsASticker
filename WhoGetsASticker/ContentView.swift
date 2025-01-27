//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Zhejun Zhang on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    private var posters = ["Kevin L.","John G."]
    @State private var messageString2 = ""
    @State private var messageString3 = ""
    @State private var randomName = -1
    private let appColor: Color = .primaryApp
    
    var body: some View {
        let imageName = "sticker"
        let messageString = "Who Gets a Sticker?"
        
        VStack {
            
            Text(messageString)
                .bold()
                .font(.largeTitle)
                .foregroundStyle(appColor)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
            
            Text("The following students posted to #BuildWithProfG")
                .font(.largeTitle)
                .fontWeight(.thin)
            
            Text("\(posters)")
                .font(.largeTitle)
            
            Spacer()
            
            Text(messageString2)
                .font(.largeTitle)
            Text(messageString3)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(appColor)
                .animation(.default, value: messageString3)
            
            Spacer()
            
            Button("Choose!") {
                messageString2 = "This Week's Winner is..."
                
                let randomName = Int.random(in: 0...posters.count-1)
                
                messageString3 = posters[randomName]
            }
            .buttonStyle(.borderedProminent)
            .bold()
            .font(.title2)
            .tint(appColor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

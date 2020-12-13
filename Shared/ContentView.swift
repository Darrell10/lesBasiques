//
//  ContentView.swift
//  Shared
//
//  Created by Frederick Port on 12/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Vue
    
    var body: some View {
        VStack {
            // MARK: - Header
            HStack {
                Image("trident").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle()).padding()
                Text("Sauvegarde des Océans").font(.largeTitle).foregroundColor(.white).multilineTextAlignment(.center).padding()
            }.background(Color.secondary).cornerRadius(25).padding()
            Spacer()
            
            // MARK: - Vue des boutons
            HStack {
                // Twitter
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("twitter")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }).buttonStyle(PlainButtonStyle())
                // Facebook
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("facebook")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }).buttonStyle(PlainButtonStyle())
                
                // Visite site
                Button("Visitez notre site") {
                }.foregroundColor(.black)
                .buttonStyle(PlainButtonStyle())
                .padding(.all, 20)
                .background(Color.white)
                .clipShape(Capsule())
            }.padding()
            Divider()
            
            // MARK: - Texte du bas
            Text("Parce que la sauvegarde des océans est essentielle à la diversité de notre planète, protégeons la.")
                .font(.title3)
                .multilineTextAlignment(.center).foregroundColor(.black)
            
            // MARK: - Label du bas
            HStack {
                Spacer()
                Label("Tenez moi informé.", systemImage: "message")
                Spacer()
            }
            .padding()
            .background(Color.white)
            
        }
        .edgesIgnoringSafeArea(.bottom)
        // MARK: - Image de fond
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

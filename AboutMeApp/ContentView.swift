//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var facts = "Age: 15\nGrade: 10th\nSiblings: 1\nPet: Hamster (Bean)\nFrom: Cupertino, CA\nBirthday: 2/19/2008"
    var body: some View {
        ZStack{
            Color(red: 1.2, green: 0.7, blue: 0.7)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Anya Li")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                Spacer()
                
                HStack {
                    VStack{
                        HStack{
                            Spacer()
                            Image("blue")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0)
                                .cornerRadius(20)
                        }
                        Text("..........................................")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        HStack{
                            Image("purple")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20)
                            VStack{
                                Text("About Me")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text(facts)
                                    .font(.headline)
                            }
                            Spacer()
                        }
                    }
                    
                    
                }
                Spacer()
                Button("More Facts"){
                    facts = "Hobbies: \n- Artistic Swimming\n- Coding\n- Robotics\n- Crafts\n\nFavorite Food: Ice Cream!\n\nThings I love:\n- Dogs\n- The snow\n- Hanging out with friends"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

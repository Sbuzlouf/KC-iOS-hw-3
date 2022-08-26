//
//  ContentView.swift
//  application
//
//  Created by Sumaya Buzlouf on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.indigo.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                Text("التخصصات")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
                
                List {
                    ForEach(ourExp){ our in
                        HStack {
                            Image(our.profileImage)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                                .padding(3)
                                .background(.indigo.opacity(0.7))
                                .clipShape(Circle())
                            
                            VStack {
                                Text("التخصص: \(our.group)")
                                    .padding(5)
                                Text("التقييم: \(our.rate)")
                                   
                                Text("شنو تحتاج: \n \(our.needs[0])")
                                    .padding(5)
                                    .multilineTextAlignment(.center)
                            }.frame(width: 300, height: 150)
                        }
                    }
                }.frame(height: 550)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

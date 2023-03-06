//
//  ContentView.swift
//  War Game
//
//  Created by Harsh Mishra on 01/03/23.
//

import SwiftUI

struct ContentView: View {
//    property wrapper property of struct contentview is playerimage
  @State  var playerImage = "card7"
    @State  var cpuImage = "card6"
    
    @State    var playerScore = 0
    @State   var cpuScore = 0
    var body: some View {
        ZStack{
//            background image
            Image("background-cloth").resizable().ignoresSafeArea()
        VStack() {
            Spacer()
//            logo image
            Image("logo")
                
            Spacer()
            
//            Both Cards
            HStack{
                Spacer()
                Image(playerImage)
                Spacer()
                Image(cpuImage)
                Spacer()
            }
            Spacer()
//            For Button
            
           
            Button {
                deal()
            } label: {
                Image("button")
            }

            Spacer()
            
//            For Score
            HStack{
                Spacer()
                VStack{
                    Text("Player").font(.headline).padding(.bottom,10)
                    
                    Text(String(playerScore)).font(.largeTitle)
                }
                Spacer()
                VStack{
                    Text("CPU").font(.headline).padding(.bottom,10)
                    
                    Text(String(cpuScore)).font(.largeTitle)
                }
                Spacer()
            }.foregroundColor(.white)
           Spacer()
        }
       
    }
    }
    
    func deal(){
        
        
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
//       Randomize the players card
        playerImage = "card" + String(playerCardValue)
        
//        Randomize the cpus card
        cpuImage = "card" + String(cpuCardValue)
        
//        Update the card
        if playerCardValue > cpuCardValue{
            playerScore+=1
        }
        else if playerCardValue < cpuCardValue
        {
            cpuScore+=1
        }
        else
        {
            print("Tie ..!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
